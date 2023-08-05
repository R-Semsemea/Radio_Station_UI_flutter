import 'package:flutter/material.dart';

const String pngIconsPath = "assets/png/icons/";
const String svgIconsPath = "assets/svg/";
const String circular = "Circular";
const String hkBold = "HK_Bold";
const String hkMedium = "HK_Medium";

Widget searchIcon(BuildContext context) {
  return buildIcon(context: context, icon: "${pngIconsPath}search.png");
}

Widget buildIcon(
    {required BuildContext context,
    required String icon,
    double? height,
    double? width,
    VoidCallback? onTap}) {
  return GestureDetector(
    onTap: () => print("tapped"),
    /*padding: EdgeInsets.zero,
    minWidth: 0,*/
    child: Image.asset(
      icon,
      height: height ?? MediaQuery.of(context).size.width * 0.0417,
      width: width ?? MediaQuery.of(context).size.width * 0.0417,
    ),
  );
}

RadialGradient backgroundRadialGradient = const RadialGradient(
  radius: 1.234,
  colors: [Color(0xff2d2c3c), Color(0xff191925)],
);

double heightOfScreen(BuildContext context, double size) {
  return ((MediaQuery.of(context).size.height) -
          //(MediaQuery.of(context).padding.top) -
          (MediaQuery.of(context).padding.bottom)) *
      size;
}

double widthOfScreen(BuildContext context, double size) {
  return ((MediaQuery.of(context).size.width) -
          (MediaQuery.of(context).padding.right) -
          (MediaQuery.of(context).padding.left)) *
      size;
}

Map<int, Color> color = {
  50: Color.fromRGBO(136, 14, 79, .1),
  100: Color.fromRGBO(136, 14, 79, .2),
  200: Color.fromRGBO(136, 14, 79, .3),
  300: Color.fromRGBO(136, 14, 79, .4),
  400: Color.fromRGBO(136, 14, 79, .5),
  500: Color.fromRGBO(136, 14, 79, .6),
  600: Color.fromRGBO(136, 14, 79, .7),
  700: Color.fromRGBO(136, 14, 79, .8),
  800: Color.fromRGBO(136, 14, 79, .9),
  900: Color.fromRGBO(136, 14, 79, 1),
};

///SVG Elements
const String splashBackground =
    '''<svg  width="375" height="812" viewBox="0 0 375 812">
  <defs>
    <radialGradient id="radial-gradient" cx="0.5" cy="0.5" r="1.234" gradientTransform="translate(0 0.266) scale(1 0.468)" gradientUnits="objectBoundingBox">
      <stop offset="0" stop-color="#2d2c3c"/>
      <stop offset="1" stop-color="#191925"/>
    </radialGradient>
  </defs>
  <rect id="Background" width="375" height="812" fill="url(#radial-gradient)"/>
</svg>


 ''';

const String appLogo =
    '''<svg  width="292.981" height="96.86" viewBox="0 0 292.981 96.86">
  <defs>
    <linearGradient id="linear-gradient" x1="1.948" y1="0.639" x2="0.88" y2="0.421" gradientUnits="objectBoundingBox">
      <stop offset="0" stop-color="#645095"/>
      <stop offset="1" stop-color="#402669"/>
    </linearGradient>
    <linearGradient id="linear-gradient-2" x1="0.5" x2="0.5" y2="1" gradientUnits="objectBoundingBox">
      <stop offset="0" stop-color="#f11775"/>
      <stop offset="1" stop-color="#fb6580"/>
    </linearGradient>
    <filter id="Text" x="31.393" y="26.436" width="261.588" height="48.028" filterUnits="userSpaceOnUse">
      <feOffset dy="3" input="SourceAlpha"/>
      <feGaussianBlur stdDeviation="3" result="blur"/>
      <feFlood flood-opacity="0.361"/>
      <feComposite operator="in" in2="blur"/>
      <feComposite in="SourceGraphic"/>
    </filter>
  </defs>
  <g id="Logo" transform="translate(-240.364 -183.98)">
    <g id="Group_11599" data-name="Group 11599" transform="translate(240.364 183.98)">
      <g id="Group_11596" data-name="Group 11596" transform="translate(0 44.297)">
        <path id="Path_9594" data-name="Path 9594" d="M50.957,120.72c-6.864,0-13.243-1.235-17.754-3.682C22,110.967,22.918,98.9,24.968,89.068c2.321-11.14,9.117-20.815,9.186-20.911l.76.538c-.067.1-6.754,9.618-9.034,20.562-1.983,9.518-2.892,21.184,7.767,26.963,8.37,4.539,23.395,4.787,35.724.589,7.234-2.461,11.374-6.092,11.359-9.959-.014-3.613-3.688-6.985-9.828-9.021-9.619-3.189-26.126-3.452-34.922-1.693l-.181-.912c9.1-1.82,25.491-1.564,35.4,1.722,6.538,2.168,10.45,5.868,10.467,9.9.017,4.292-4.354,8.245-11.99,10.845A59.21,59.21,0,0,1,50.957,120.72Z" transform="translate(-23.702 -68.157)" fill="#757b93"/>
      </g>
      <path id="Path_9595" data-name="Path 9595" d="M48.246,109c5.411,0,9.8,2.333,9.8,5.212s-4.386,5.211-9.8,5.211-9.8-2.333-9.8-5.211S42.834,109,48.246,109Z" transform="translate(-25.465 -28.742)" fill="#5e6582"/>
      <path id="Path_9596" data-name="Path 9596" d="M48.737,109c3.415,0,6.183,1.473,6.183,3.289s-2.768,3.289-6.183,3.289-6.183-1.472-6.183-3.289S45.322,109,48.737,109Z" transform="translate(-25.956 -28.742)" fill="#757b93"/>
      <path id="Path_9597" data-name="Path 9597" d="M46.42,106.3V111.4c0,.816,1.244,1.478,2.779,1.478s2.779-.662,2.779-1.478V106.3Z" transform="translate(-26.418 -28.42)" fill="#5e6582"/>
      <path id="Path_9598" data-name="Path 9598" d="M49.2,104.619c1.535,0,2.779.661,2.779,1.477s-1.244,1.478-2.779,1.478-2.779-.662-2.779-1.478S47.664,104.619,49.2,104.619Z" transform="translate(-26.418 -28.219)" fill="#757b93"/>
      <path id="Path_9599" data-name="Path 9599" d="M48.2,51.945v47.61c0,.357.543.645,1.213.645s1.213-.289,1.213-.645V51.945Z" transform="translate(-26.631 -21.922)" fill="#ccd3ea"/>
      <path id="Path_9600" data-name="Path 9600" d="M46.42,56.146V65.56c0,.816,1.244,1.478,2.779,1.478s2.779-.662,2.779-1.478V56.146Z" transform="translate(-26.418 -22.424)" fill="#2d2c3c"/>
      <path id="Path_9601" data-name="Path 9601" d="M46.42,53.291V62.7c0,.816,1.244,1.477,2.779,1.477s2.779-.661,2.779-1.477V53.291Z" transform="translate(-26.418 -22.083)" fill="#fb6580"/>
      <path id="Path_9602" data-name="Path 9602" d="M49.2,51.612c1.535,0,2.779.662,2.779,1.478s-1.244,1.478-2.779,1.478-2.779-.662-2.779-1.478S47.664,51.612,49.2,51.612Z" transform="translate(-26.418 -21.882)" fill="#2d2522"/>
      <path id="Path_9603" data-name="Path 9603" d="M69.3,19.281a8.072,8.072,0,0,1,2.007,11.2l-5.97,8.577a8.048,8.048,0,0,1-13.21-9.2l5.97-8.577A8.072,8.072,0,0,1,69.3,19.281Z" transform="translate(-26.929 -17.846)" fill="url(#linear-gradient)"/>
      <g id="Group_11597" data-name="Group 11597" transform="translate(15.498 16.873)">
        <path id="Path_9604" data-name="Path 9604" d="M57.187,38.265c-1.928-1.547-4.388-1.683-5.494-.3l-1.137,1.6c1.117-1.348,3.553-1.207,5.467.328s2.595,3.919,1.488,5.3l1.164-1.63C59.781,42.183,59.115,39.811,57.187,38.265Z" transform="translate(-42.411 -37.01)" fill="#fb6580"/>
        <path id="Path_9605" data-name="Path 9605" d="M54.917,40.115c-1.914-1.536-4.349-1.676-5.467-.328L41.305,51.28l6.977,5.6L56.4,45.414C57.512,44.034,56.845,41.662,54.917,40.115Z" transform="translate(-41.305 -37.231)" fill="#2d2c3c"/>
        <path id="Path_9606" data-name="Path 9606" d="M49.263,49.423c-1.928-1.546-4.388-1.682-5.494-.3l-1.137,1.6c1.117-1.348,3.553-1.207,5.467.328s2.595,3.919,1.489,5.3l1.163-1.629C51.857,53.342,51.191,50.97,49.263,49.423Z" transform="translate(-41.464 -38.343)" fill="#5e6582"/>
      </g>
      <path id="Path_9607" data-name="Path 9607" d="M41.232,52.837c-1.106,1.379-.44,3.751,1.488,5.3s4.388,1.683,5.495.3.44-3.752-1.488-5.3S42.339,51.457,41.232,52.837Z" transform="translate(-25.734 -21.915)" fill="#222130"/>
      <path id="Path_9608" data-name="Path 9608" d="M44.348,56.058a2.009,2.009,0,0,0-2.734-.164l-4.072,5.747,3.488,2.8,4.062-5.731C45.645,58.018,45.312,56.832,44.348,56.058Z" transform="translate(-25.357 -22.339)" fill="#5e6582"/>
      <path id="Path_9609" data-name="Path 9609" d="M39.955,62.571c-.964-.774-2.194-.842-2.747-.151-.076.094-2.464,4.373-2.464,4.373l2.22,1.78s3.659-3.259,3.735-3.354C41.251,64.53,40.919,63.344,39.955,62.571Z" transform="translate(-25.022 -23.117)" fill="#2d2c3c"/>
      <path id="Path_9610" data-name="Path 9610" d="M34.721,67.41a1.5,1.5,0,1,0,1.747.1A1.272,1.272,0,0,0,34.721,67.41Z" transform="translate(-24.999 -23.735)" fill="#2d2c3c"/>
      <path id="Path_9612" data-name="Path 9612" d="M50.7,44.65c-.877,1.093-2.151,1.528-2.845.972s-.545-1.895.332-2.988,2.151-1.528,2.845-.972S51.572,43.557,50.7,44.65Z" transform="translate(-26.537 -20.664)" fill="#ccd3ea"/>
      <path id="Path_9613" data-name="Path 9613" d="M50.288,44.337c-.727.906-1.783,1.267-2.358.806s-.453-1.571.275-2.478,1.783-1.267,2.359-.806S51.015,43.43,50.288,44.337Z" transform="translate(-26.555 -20.693)" fill="#f68712"/>
    </g>
    <g transform="matrix(1, 0, 0, 1, 240.36, 183.98)" filter="url(#Text)">
      <path id="Text-2" data-name="Text" d="M-57.239,15.707h5.318V2.285h2.532l3.509,13.422h5.354L-44.613,1.272c2.75-1.122,3.618-3.582,3.618-7.091,0-5.9-3.328-7.778-9.189-7.778h-7.055Zm5.318-16.751v-8.9h1.99c3.075,0,3.907,1.447,3.907,4.414,0,3.148-1.122,4.486-4.2,4.486ZM-35.6,15.707h5.029l1.194-6.765h5.1l1.158,6.765h4.956l-5.861-29.3h-5.716Zm6.765-10.166,1.99-12.3,1.99,12.3Zm16.425,10.166h7.127c6.874,0,9.081-3.075,9.081-9.515V-4.48c0-6.259-2.171-9.117-9.3-9.117h-6.91ZM-7.1,11.981V-9.8H-5.5c3.509,0,3.871,1.447,3.871,4.956V6.373c0,3.654-.145,5.608-3.8,5.608Zm17.8,3.726h5.282V-13.6H10.7Zm20.622.4c6.259,0,8.43-3.69,8.43-9.587v-11c0-5.933-2.171-9.443-8.43-9.443-6.3,0-8.466,3.509-8.466,9.443v11C22.86,12.451,24.994,16.1,31.325,16.1Zm0-3.943c-2.641,0-3.039-1.954-3.039-4.378V-5.711c0-2.46.434-4.305,3.039-4.305s3,1.845,3,4.305V7.784C34.328,10.208,33.93,12.161,31.325,12.161ZM65.514,16.1a6.933,6.933,0,0,0,7.344-7.2c0-3.871-1.99-6.44-4.378-8.5l-3.654-3.22C63.271-4.155,62.439-5.24,62.439-7.23A2.457,2.457,0,0,1,64.9-9.98c2.352,0,2.75,2.062,2.858,4.812l4.595-.8c-.289-4.269-1.845-7.959-7.344-7.959-4.667,0-7.561,2.6-7.561,7.236A8.65,8.65,0,0,0,60.847.4l3.69,3.22c1.917,1.664,3.22,3.075,3.22,5.608,0,1.592-.724,2.75-2.424,2.75-2.352,0-3.184-2.243-3.328-5.716l-4.595.9C57.627,12.994,60.159,16.1,65.514,16.1Zm16.244-.4h5.354V-9.654h4.558V-13.6H77.091v3.943h4.667Zm13.205,0h5.029l1.194-6.765h5.1l1.158,6.765H112.4L106.54-13.6h-5.716Zm6.765-10.166,1.99-12.3,1.99,12.3Zm17.981,10.166h5.354V-9.654h4.558V-13.6h-14.58v3.943h4.667Zm15.557,0h5.282V-13.6h-5.282Zm20.622.4c6.259,0,8.43-3.69,8.43-9.587v-11c0-5.933-2.171-9.443-8.43-9.443-6.295,0-8.466,3.509-8.466,9.443v11C147.421,12.451,149.556,16.1,155.887,16.1Zm0-3.943c-2.641,0-3.039-1.954-3.039-4.378V-5.711c0-2.46.434-4.305,3.039-4.305s3,1.845,3,4.305V7.784C158.89,10.208,158.492,12.161,155.887,12.161Zm15.195,3.545h4.558V-1.8l7.163,17.51h3.545V-13.6h-4.414V3.117L174.808-13.6h-3.726Z" transform="translate(97.63 46.36)" fill="url(#linear-gradient-2)"/>
    </g>
    <path id="Text-3" data-name="Text" d="M6.741-3.466H5.953L3.4.716.846-3.466H0L2.984,1.407V3.982h.777V1.407Zm4.693,7.512A3.746,3.746,0,0,0,15.338.258,3.746,3.746,0,0,0,11.433-3.53,3.749,3.749,0,0,0,7.517.258,3.749,3.749,0,0,0,11.433,4.046Zm0-.7A3.029,3.029,0,0,1,8.294.258a3.029,3.029,0,0,1,3.139-3.086A3.017,3.017,0,0,1,14.551.258,3.017,3.017,0,0,1,11.433,3.344Zm9.2.7c1.9,0,3.054-1.107,3.054-3.245V-3.466h-.766V.769c0,1.766-.83,2.575-2.288,2.575S18.36,2.535,18.36.769V-3.466h-.787V.8C17.573,2.94,18.733,4.046,20.637,4.046Zm11.907-.064-1.82-2.554a2.309,2.309,0,0,0,1.7-2.341c0-1.6-1.149-2.554-3.043-2.554H26.6V3.982h.787V1.62h2a5.3,5.3,0,0,0,.6-.032l1.7,2.394ZM29.363.95H27.383V-2.785h1.979c1.49,0,2.277.681,2.277,1.873C31.64.258,30.852.95,29.363.95Zm8.779,3.033h3.033A3.679,3.679,0,0,0,45.164.258a3.679,3.679,0,0,0-3.99-3.724H38.141Zm.787-.681V-2.785h2.2A2.987,2.987,0,0,1,44.387.258,2.987,2.987,0,0,1,41.131,3.3Zm13.992.681h.83L50.346-3.466h-.777L46.164,3.982h.819l.894-1.99h4.15ZM48.165,1.354l1.788-4,1.788,4Zm7.353,2.628H56.3V-3.466h-.787Zm3.746,0h4.959V3.3H60.05V-3.466h-.787ZM70.808-3.466h-.787L67.467.716,64.913-3.466h-.841l2.979,4.873V3.982h.777V1.407Zm5.076,7.448h3.033A3.679,3.679,0,0,0,82.906.258a3.679,3.679,0,0,0-3.99-3.724H75.884Zm.787-.681V-2.785h2.2A2.987,2.987,0,0,1,82.13.258,2.987,2.987,0,0,1,78.874,3.3Zm11.79.745A3.746,3.746,0,0,0,92.366.258,3.746,3.746,0,0,0,88.461-3.53,3.749,3.749,0,0,0,84.545.258,3.749,3.749,0,0,0,88.461,4.046Zm0-.7A3.029,3.029,0,0,1,85.322.258a3.029,3.029,0,0,1,3.139-3.086A3.017,3.017,0,0,1,91.578.258,3.017,3.017,0,0,1,88.461,3.344Zm8.257.7c1.9,0,2.777-.936,2.777-2.032C99.5-.7,94.909.535,94.909-1.508c0-.745.607-1.351,1.969-1.351a3.835,3.835,0,0,1,2.043.617l.266-.628a4.2,4.2,0,0,0-2.309-.66c-1.894,0-2.745.947-2.745,2.043,0,2.756,4.586,1.5,4.586,3.543,0,.734-.607,1.319-2,1.319a3.658,3.658,0,0,1-2.458-.9l-.309.607A4.039,4.039,0,0,0,96.718,4.046Zm5.81-.745V.535h3.852v-.67h-3.852v-2.65h4.32v-.681H101.74V3.982h5.267V3.3Zm13.439.745A3.746,3.746,0,0,0,119.872.258a3.746,3.746,0,0,0-3.905-3.788A3.749,3.749,0,0,0,112.051.258,3.749,3.749,0,0,0,115.967,4.046Zm0-.7A3.029,3.029,0,0,1,112.828.258a3.029,3.029,0,0,1,3.139-3.086A3.017,3.017,0,0,1,119.085.258,3.017,3.017,0,0,1,115.967,3.344Zm11.311-6.129v-.681H122.17V3.982h.787V.822h3.852V.141h-3.852V-2.785Zm10.928-.681v3.32h-4.661v-3.32h-.787V3.982h.787V.545h4.661V3.982h.777V-3.466Zm9.3,7.448h.83l-3.4-7.448h-.777l-3.4,7.448h.819l.894-1.99h4.15Zm-4.756-2.628,1.788-4,1.788,4Zm10.141-4.82H150.1V3.982h.787V1.631h2c1.894,0,3.043-.958,3.043-2.543S154.784-3.466,152.89-3.466ZM152.869.939H150.89V-2.785h1.979c1.49,0,2.277.681,2.277,1.873C155.146.258,154.358.939,152.869.939Zm8.087-4.405h-2.788V3.982h.787V1.631h2C162.85,1.631,164,.673,164-.912S162.85-3.466,160.956-3.466ZM160.934.939h-1.979V-2.785h1.979c1.49,0,2.277.681,2.277,1.873C163.211.258,162.424.939,160.934.939Zm5.3,3.043h.787V-3.466h-.787Zm9.194-7.448V2.578l-4.8-6.044h-.649V3.982h.787V-2.062l4.788,6.044h.649V-3.466ZM179.949,3.3V.535H183.8v-.67h-3.852v-2.65h4.32v-.681h-5.108V3.982h5.267V3.3Zm8.917.745c1.9,0,2.777-.936,2.777-2.032,0-2.713-4.586-1.479-4.586-3.522,0-.745.607-1.351,1.969-1.351a3.835,3.835,0,0,1,2.043.617l.266-.628a4.2,4.2,0,0,0-2.309-.66c-1.894,0-2.745.947-2.745,2.043,0,2.756,4.586,1.5,4.586,3.543,0,.734-.607,1.319-2,1.319a3.658,3.658,0,0,1-2.458-.9l-.309.607A4.039,4.039,0,0,0,188.866,4.046Zm7.076,0c1.9,0,2.777-.936,2.777-2.032,0-2.713-4.586-1.479-4.586-3.522,0-.745.607-1.351,1.969-1.351a3.835,3.835,0,0,1,2.043.617l.266-.628a4.2,4.2,0,0,0-2.309-.66c-1.894,0-2.745.947-2.745,2.043,0,2.756,4.586,1.5,4.586,3.543,0,.734-.606,1.319-2,1.319a3.658,3.658,0,0,1-2.458-.9l-.309.607A4.039,4.039,0,0,0,195.942,4.046Z" transform="translate(302.889 265.473)" fill="#c6c6d0"/>
  </g>
</svg>
''';

const String picture =
    '''<svg width="200" height="200" xmlns="http://www.w3.org/2000/svg">
  <defs>
    <linearGradient id="Gradient1">
      <stop offset="5%" stop-color="white" />
      <stop offset="95%" stop-color="blue" />
    </linearGradient>
    <linearGradient id="Gradient2" x1="0" x2="0" y1="0" y2="1">
      <stop offset="5%" stop-color="red" />
      <stop offset="95%" stop-color="orange" />
    </linearGradient>

    <pattern id="paint0_radial" x="0" y="0" width=".25" height=".25">
      <rect x="0" y="0" width="50" height="50" fill="skyblue" />
      <rect x="0" y="0" width="25" height="25" fill="url(#Gradient2)" />
      <circle
        cx="25"
        cy="25"
        r="20"
        fill="url(#Gradient1)"
        fill-opacity="0.5" />
    </pattern>
  </defs>

  <rect fill="url(#Gradient1)" stroke="black" width="200" height="200" />
</svg>''';

String eventShortDescription = '''Lorem ipsum dolor sit ''';
String eventDescription =
    '''Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. 

Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. ''';
