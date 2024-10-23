struct ContainerState {} derive(Default, ToJson, @json.FromJson)

fn comp_container(
  _states : @respo.RespoStatesTree
) -> @respo_node.RespoNode[ActionOp] {
  @respo_node.div(
    [
      @respo_node.div(
        style=@respo_node.RespoStyle::new(
          font_size=32,
          text_align=Center,
          margin_top=40,
          margin_bottom=80,
        ),
        attrs=@respo_node.respo_attrs(class_name=@respo.ui_font_fancy),
        [
          @respo_node.span(
            attrs=@respo_node.respo_attrs(
              inner_text="Collection of some Fungi rules",
            ),
            [],
          ),
        ],
      ),
      @respo_node.div(
        [
          // comp_cell(
          //   "TODO", "04594470b0ca4c8210ca000021100102830000140200830000228198000a101400000406c00001624080000804010a5460219e340001b09010300042200302b1",
          // ),
          comp_cell(
            "TODO", "3fffffff7b717aad7f6ebbef77fdfdd7fdeefad567af97ef3f75fddb7fff1d6fabfcbecff7977fff3fefd3d3e16f7bb797affff9bd37ed65f4b9fcfbfbbfdbaf",
          ),
          comp_cell(
            "TODO", "5fff7d75eca67fff7bdff3a3fff7defe7fcdbf4fdeefdddcbf77ff67b2ffefdffc59fdfffbfeefcd9deaf7bf9dbfdf73bfcbbbf6fdec7a7dffe9fe7ffeffef2f",
          ),
          comp_cell(
            "TODO", "6dfefbff5ebfbeffed979ffb7df6ffb91fb39b97d9d7ffdfd7fbdbadd7dbf2ffbffa9fafdcfdf9eff3f6d5ef9efa1f77dd7cb79fffb577afdfffff7ffffee7ff",
          ),
          comp_cell(
            "TODO", "6fbfffffdaffeadffffffb57fffffecffbedbebfffdcf6eb5fffc9bfffef9ff9ff7dffcf95f9bfb5dfdf6ffeae67efdffffff5f7ffddbed9fddf3abfe77ebfdf",
          ),
          comp_cell(
            "TODO", "7bf7b6f7f55f9eefefbfdefbff7ecb576fafd77f7f6dfffdfdaffffeeb37fd1f9cdbbe9fbb7ff579e7d73fefbf76dbf7eff5b7f5f37febffbfff789ebfffbfef",
          ),
          comp_cell(
            "TODO", "7fff7f4fe3feffd6dff76fee1fefbebfcfebfdfdf9feffe3feff67df39deffaffff7bf6dd7ed7f31bfff7feff3dfffffde75b3fffffde37e7c77efddf7defbff",
          ),
          comp_cell(
            "TODO", "7ffff777fbeffd7ef7f63deffbff25ffb9f7fde7f7fb1d77d5fccffcdfd2dbffffffde9fefffdf5f3bbbffcff1edfdeefebe3ebbbd9fff3fdfbfffafb3fd5d5f",
          ),
          comp_cell(
            "TODO", "9df99dff6ef7f4f7fffffffbc1ffed5fff67f36feffefaeffff7ddabcfe7ffbefbf73ffbfef6dd7fffeffbef6ef5aafdafdf7f375e9bfffff9f3fbfcdfbfebff",
          ),
          comp_cell(
            "TODO", "9ff7fd7563ffeeffae2797d7fffaff779eeffaadfe7ffff5aff7f7f7efdbffffff7ef7dfd5783f7b7ffffb2f7ff73e83ffffe7ffdff1fff7c9bb77bffffe7b7f",
          ),
          comp_cell(
            "TODO", "bbf6ef6defabbfdfffbfcfbffd5fffffd78fff7effffd5df6fff767f3fffffc79bfdffcf7ee77fc7eff7b7fad3f9bdfdffc83eeffd7f9be7ffcff7ff7ffc7f3f",
          ),
          comp_cell(
            "TODO", "bfb77ebefbb9fbbbb9fdf9dffd13f6bffa77ef377ee7f9f3fbffcf7dd3d9fddfde7fdf7bfeeaf72efffbeed9dbbfbffffbfdf5ffffdf7ffbf7f7e719fff7edcf",
          ),
          comp_cell(
            "TODO", "bfffeefbbff7f3d77dbef17e7e3bd5fdff7bb5b37bf7edd5afbfc7dfffaf3f7bfd5fdfbfcffb6fffcf7fffcd5fff37ffffbfe7db7be9bdbf3f7ffd3ff9ee735d",
          ),
          comp_cell(
            "TODO", "fdf7a7cff9dfbeff1f7f79f76eee5f6fdff1dffb7fbbcfcf6ffebaf67077afbbfafd7f7f3dffffd7dfbfbe5f749fefffdebbafffdff63fdb7fffdfdffffc5fb3",
          ),
          comp_cell(
            "TODO", "fedfdf957dffef5ffff5dffffdff9eff9ff7b7fb5edbafffbfffd66df5f5fef73fadf67bff765bfdbf8f7feffcfff1ffefff5afff767bdff77dff7fd726aede7",
          ),
          comp_cell(
            "TODO", "fefbfeffefdd5dffbcf7efceff6effcff65edfb3ffefffdff5fdffb77ffaaf8ffdfaf64bfffbffbfff5df7ffdfeefbdffdfffffbfdfbeffffff7fe7f7bfffbf8",
          ),
          comp_cell(
            "TODO", "ffabffedd93fd7ff3febf7d7fdbadffeb8febfcfefebfde7ff3ffffaeffbd57e7a89b6fffff2fffff7f7ffc9febeebdd76bbdffdff7ff7ed7fe9ffffbfbfffef",
          ),
          comp_cell(
            "TODO", "ffafb55e7bffee5ffb7bb357fdf7ff8bdff7a7fc9957fee7ecff7efdddefbff776baff2fdfdd7fffbfef7cbfff7fb5a177263f7fdb57ad39fffcfefffd6effff",
          ),
          comp_cell(
            "TODO", "ffbdfddfed6dfffdf3f95ffde6efcf7bdffffcf7f9bfefdbf74bfbefff73ffc5fff6bffff7fdfb3fbe3b7ff3fffffefffbdf3f7fffeffbbcffaefdcb7caeff77",
          ),
          comp_cell(
            "TODO", "fffffffbfed7ffffdfb7ffffef4ff6fdfefc7fbefee2d77defb77ef76efffeefef7d9fecef3ffef777cb2fbdf7f6ff7fe7ce7baddff7affff7ffdfa7aff358fa",
          ),
          comp_cell(
            "TODO", "effdfaffe5bffbfaedf7ff3fdefdba5dc7e33ef7f7f8cf1dbffff7d1e9fefcdf9f5ffbffddd2bfaffeefdf7efffefed77fbddbfffbecbeffbbf87e3dea6f3dfb",
          ),
          comp_cell(
            "TODO", "7dffff72ffdff7fbfeefffd7f5bfc37a7f5fef7f1dddfe7d6ff7bbb76ffff7f6bfffbef5c6f8ffe6fefddd91df9beffb5ffffeedfffbffe6b9dfaf7ff66fb5ff",
          ),
          comp_cell(
            "TODO", "2df76bdfa7ffe7bffdf7bf7fffffb7fbffb7affdffffdfa5f79f36afbfd777fff4b967ff2feadfffabf7ff7f7fefdf7abe77f7df3bdb7beffbcfffdff7b3fd7b",
          ),
          comp_cell(
            "TODO", "76ff3bdfaff6ef3b3fffcc7bfe7cbfdf9dfebfbf6e25ff5efffb7679dfffb5dfffdffdbf3e7b7fffdfff6efeffbdbffeffefaffbfbfdffdffdd72fe7dbfeefff",
          ),
          comp_cell(
            "TODO", "ff9e575bf7ffbbf77f3df9f5dff7f3fff7f97fed7db7ffb9aff7ec7fdcffe69fffff7ffd8dbf5fffb7e9fffbfedf6fde7ffb797ddfffbfbbf3ecff7be67bfbfb",
          ),
          comp_cell(
            "TODO", "ffbfffeefcdfff747ff75f3bbff9f0b9ffdfffffbfb76f76ffb57fd7dbbff2ffdff5fdff7efcddff6dadefbfddfb6fd7dff7ffef3befff5b6f5feffffbd7bbcf",
          ),
          comp_cell(
            "TODO", "b3bfbf75bffeff7deb76f3fa36bfb7fdff9dfbfbbffffdef7fff65feff77efffcef9ebdfffddfbf376ffbfcdfff5ffe7fff55bffd73f2ffebffdfebffbdbb9fd",
          ),
          comp_cell(
            "TODO", "fe5bffdffe1fdffbebfbffbbf74bcf6ddbd79ffffd7fe9ef716ffffef3dfebff6bfde7ffb7bffff7fd4fe3ba5fb7f3fbffafdeff7eeffe4dfafdf756ff7fad9f",
          ),
          comp_cell(
            "TODO", "ffd6ffdf57fdadffffffddfbfd77fbcedefffad7fd3ef9bcffffbcdf6fffffffff56cdf9ff7bfbdedfcb37bde3ff7f6f3df57fd76b7ee7b7ffbf7ffbef7e17bd",
          ),
          comp_cell(
            "TODO", "b9f6ffff3becfddebfffdfedfb16dff9dbb77aebbfafefff7ff7ffdfffdfbfbfefcff277f7cfffbf77ff67ff1eeffcfdbff7fbbdff9ff7f5f76b6feafebeef7f",
          ),
          comp_cell(
            "TODO", "f77df7bf7dd77feffb7ecdbbebfef7ffe7fbf73f72fddbddfeeff3faff5bfffffba76ef6bbddf7fbfff477f3dbeefe7dfffef42ff6fcffdbffbe7eefb7bbff7d",
          ),
          comp_cell(
            "TODO", "dffdff7bbbeffef5f7e7eb6dfbc7eeffdf6effff9f71fff9edeeeffdf3ff7fbfff2fdfbcef77f7ffffd7fef3f9f7ffffffbffff6dfbfffbfdffbfff7eb7fffe2",
          ),
          comp_cell(
            "TODO", "37fff7ff1fff7dff7dfdffbafbde7dfffbfb7ff5ddfff9f6d7fdd3fffff7b6cdf7fbf5d9d6ffbfbf1ffdffdfffff5f4bdfafffaaffaedfff9fdbebfffff6fdef",
          ),
          comp_cell(
            "TODO", "7ffdf6f5fffbef7fadff57bfbfbfffffef9b6e6dfd7fe97effdd7f6e5fbf7bf9bcbbf3fcfb5fffbfed95febd7e5eded7dfff7fbbdfe3f9bdbdc74fef76ffef7b",
          ),
          comp_cell(
            "TODO", "6f7fe7ddf7fd7fafffef7f7faefedf5fdfeeffdbf3ffffbf97dfbfa7bfdffefecf7efbafb7efbfeefff5dfddf2b32ddaddffb7ffdf7f56f5ff67ac9ffffbf7ff",
          ),
          comp_cell(
            "TODO", "dfb97fdf7febdffff77ac7f3ed7ebf7d5dfedff4bffdfffbf7ffeffebf5df7eff7f6fff5bfffbb7fbfb99feffdfdfff7fb75ddfedffebfb7ffd7e38fffefb2b7",
          ),
          comp_cell(
            "TODO", "7ff3fffcddbef5b7bee594ffd6ff778a5fbdfbf3bff7bfeffbe9bcbfe7dbf22dcaffcef77ae78fdffff3fd7dffd9fdbfffffffbd777fe7ffbffdbeefff7f7cf7",
          ),
          comp_cell(
            "TODO", "f4f57dddfeedbe7bdffeaffbff7f3fff7f5bfd73ff5fff5ff753efffcdff7bf7d9fff3ffbbffb7edfffecffdfff717ffffffbfde7dfe7ffdf8663dfbbfda9d7f",
          ),
          comp_cell(
            "TODO", "fdef7cf77fb9fffedff77df7fdffb9fedf7fffe775fdc7df7fbcd5ff9d7dffff7ef8b7faebefdbfffd7fcfef5f67beeb7adff56efaeeb7d7bfbf9596f6dfebcf",
          ),
          comp_cell(
            "TODO", "ff93febaff7cfdf795d9fdecfbffffffff5fffbdf7fb7fffeed7bffeb77ffeef7ffc96d77fae5dfff7bff7ebf6dafffffeef768f75bf6cd9e61bb7e5fffdeff7",
          ),
          comp_cell(
            "TODO", "df3ffefdfbfddeedfffbff7efffe3fbf5feaf1f7bfbbbdfddf7effaef6b5fffb3df33ffe6ffd2dfb54ef97bbfff7fffdfdfbbefdfffde77efffab3fdfed9eb7f",
          ),
          comp_cell(
            "TODO", "76af5f63ffbfdf53eff1f9fb779f0ec7eed3fbcf7f1f2ede3fff6d5f5fbf7ebffb7ff8ed5dfbffbfeafd9ffdbf7fadb7ff7eff9dff7fb9efcfcffffffffffffd",
          ),
          comp_cell(
            "TODO", "bbfffb67f7f6fdff7e3fff3f9f82f7df7bfefbf77ddfd4d3fffffb8efeffbff5bff7ff6bf1cf3eef79fbfeffceddaefdfff5ff7fc9ebf7ffbbfefff5effffeff",
          ),
        ],
      ),
    ],
  )
}

fn comp_cell(
  comment : String,
  name : String
) -> @respo_node.RespoNode[ActionOp] {
  @respo_node.div(
    attrs=@respo_node.respo_attrs(class_name=@respo.ui_row),
    style=@respo_node.RespoStyle::new(
      margin_bottom=80.0,
      width=Percent(80),
      max_width=Px(1200),
      margin=Auto,
    ).insert("gap", "20px"),
    [
      @respo_node.div(
        style=@respo_node.RespoStyle::new(width=Percent(20)),
        attrs=@respo_node.respo_attrs(class_name=@respo.ui_center),
        [
          @respo_node.span(
            attrs=@respo_node.respo_attrs(inner_text=comment),
            [],
          ),
          @respo_node.create_element(
            "a",
            attrs=@respo_node.respo_attrs(
              inner_text=name,
              class_name=@respo.ui_font_code,
              href="https://webgpu.art/fungi/?rule=\{name}",
            )..set("target", "_blank"),
            style=@respo_node.RespoStyle::new().insert(
              "word-break", "break-all",
            ),
            [],
          ),
        ],
      ),
      @respo_node.create_element(
        "iframe",
        attrs=@respo_node.respo_attrs(width="100%", height="400px")
          ..set("src", "https://webgpu.art/fungi/?rule=\{name}")
          ..set("frameBorder", "0"),
        style=@respo_node.RespoStyle::new(border_width=0.0),
        [@respo_node.span(attrs=@respo_node.respo_attrs(inner_text=name), [])],
      ),
    ],
  )
}
