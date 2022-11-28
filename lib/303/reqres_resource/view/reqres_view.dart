import 'package:first/101/image_learn.dart';
import 'package:first/303/reqres_resource/service/reqres_service.dart';
import 'package:first/303/reqres_resource/viewModel/reqres_provider.dart';
import 'package:first/product/extension/string_extension.dart';
import 'package:first/product/global/resource_context.dart';
import 'package:first/product/global/theme_notifier.dart';
import 'package:first/product/service/project_dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/resource_model.dart';
import '../viewModel/reqres_view_model.dart';

class ReqresView extends StatefulWidget {
  const ReqresView({super.key});

  @override
  State<ReqresView> createState() => _ReqresViewState();
}

// class _ReqresViewState extends ReqresViewModel {
class _ReqresViewState extends State<ReqresView> with ProjectDioMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ReqresProvider>(
      create: (context) {
        return ReqresProvider(ReqresService(service));
      },
      builder: (context, child) {
        return Scaffold(
          appBar: AppBar(
              actions: [
                _SaveAndNavigateWidget(),
              ],
              title: context.watch<ReqresProvider>().isLoading
                  ? const CircularProgressIndicator()
                  : const Center(
                      child: Text("title"),
                    )),
          body: Column(
            children: [
              _TempPlaceholder(),
              Expanded(
                child: _resourceListView(
                    context, context.watch<ReqresProvider>().resources),
              )
            ],
          ),
          floatingActionButton: FloatingActionButton(
              onPressed: () {
                context.read<ThemeNotifier>().changeTheme();
              },
              child: const Icon(Icons.refresh_outlined)),
        );
      },
    );
  }

  ListView _resourceListView(BuildContext context, List<Data> items) {
    return ListView.builder(
        itemCount: context.watch<ReqresProvider>().resources.length,
        itemBuilder: ((context, index) {
          return Card(
              color: Color(items[index].color?.colorValue ?? 0),
              child: Text(
                  context.watch<ReqresProvider>().isLoading
                      ? ""
                      : (items[index].name ?? ""),
                  style: Theme.of(context)
                      .textTheme
                      .headline1!
                      .copyWith(fontSize: 30, fontWeight: FontWeight.w300)));
        }));
  }
}

class _SaveAndNavigateWidget extends StatelessWidget {
  const _SaveAndNavigateWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          context
              .read<ReqresProvider>()
              .saveToLocale(context.read<ResourceContext>());
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) {
              return ImageLearn();
            },
          ));
        },
        child: const Icon(Icons.ac_unit));
  }
}

class _TempPlaceholder extends StatelessWidget {
  const _TempPlaceholder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Selector<ReqresProvider, bool>(
      builder: (context, value, child) {
        return value
            ? const Placeholder()
            : Text("data", style: Theme.of(context).textTheme.headline1);
      },
      selector: (context, provider) {
        return provider.isLoading;
      },
    );
  }
}
