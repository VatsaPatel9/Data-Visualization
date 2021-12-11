close all;
clear all;
clc;

Recall_AIM = [1 0.997044 0.996587 0.995632 0.994169 0.992205 0.989949 0.987379 0.984501 0.981286 0.977803 0.974134 0.970227 0.966102 0.961753 0.957198 0.952443 0.947465 0.942301 0.937021 0.931543 0.925974 0.920243 0.9144 0.908434 0.902299 0.896044 0.889593 0.882937 0.876174 0.869224 0.862112 0.854833 0.847474 0.839908 0.832088 0.824061 0.815849 0.807446 0.798846 0.790017 0.781036 0.771894 0.762532 0.752989 0.743302 0.733403 0.723414 0.71332 0.70309 0.69273 0.682218 0.67157 0.660793 0.649904 0.638914 0.627783 0.616499 0.605082 0.593534 0.581826 0.569989 0.558013 0.545935 0.533719 0.521412 0.508989 0.496508 0.483929 0.47129 0.458608 0.445804 0.432952 0.420046 0.407111 0.39414 0.381178 0.368183 0.355206 0.342191 0.32915 0.31615 0.303171 0.290276 0.277485 0.264725 0.252086 0.239559 0.22713 0.21482 0.202713 0.190786 0.179088 0.167569 0.156274 0.14517 0.134337 0.123837 0.113605 0.103758 0.0942549 0.0851728 0.0764751 0.0682641 0.0605026 0.0532552 0.0465004 0.0402403 0.0344867 0.0292672 0.0245516 0.0203335 0.0166628 0.0134544 0.0107001 0.00838556 0.00645557 0.00486133 0.00359688 0.00259809 0.00182821 0.00125837 0.000838395 0.000542662 0.000340104 0.000198678 0.000111877 6.03671e-005 ];
Precision_AIM = [0.198478 0.224728 0.22505 0.225813 0.227157 0.22916 0.231921 0.235386 0.239468 0.244053 0.249039 0.254344 0.259871 0.265545 0.271332 0.277165 0.283024 0.288887 0.294707 0.300493 0.306219 0.311909 0.317517 0.323061 0.32854 0.333936 0.339271 0.34451 0.349659 0.35473 0.35972 0.364648 0.369511 0.374348 0.379129 0.383858 0.388505 0.393101 0.397648 0.402144 0.406561 0.410942 0.415297 0.419592 0.423816 0.42798 0.432124 0.436238 0.44035 0.44444 0.448534 0.452535 0.456496 0.460405 0.464293 0.468157 0.471973 0.475691 0.479422 0.4831 0.486725 0.490317 0.49387 0.497337 0.500771 0.504193 0.507576 0.510919 0.514212 0.517544 0.520792 0.523988 0.527154 0.530359 0.533592 0.536829 0.540157 0.543339 0.54652 0.549634 0.552741 0.555973 0.558982 0.562114 0.565306 0.568365 0.571357 0.574442 0.577479 0.580412 0.58352 0.586501 0.5894 0.592456 0.595437 0.598317 0.601126 0.603966 0.606539 0.609256 0.611993 0.614627 0.617081 0.61969 0.621729 0.624203 0.626146 0.628046 0.630315 0.632486 0.633569 0.634375 0.636004 0.63662 0.636201 0.636172 0.638086 0.638185 0.640039 0.641177 0.641009 0.639234 0.639172 0.637117 0.634346 0.633083 0.632147 0.625902 ];

Recall_GB = [1 0.995928 0.986164 0.972947 0.956544 0.939067 0.92115 0.901878 0.881513 0.860376 0.838873 0.81776 0.796395 0.774947 0.753462 0.732206 0.710896 0.6894 0.667958 0.646734 0.625796 0.60529 0.585158 0.565636 0.546588 0.527969 0.509759 0.492005 0.474636 0.457609 0.441062 0.425007 0.409319 0.393988 0.37914 0.36471 0.350888 0.337641 0.324912 0.312667 0.300869 0.289551 0.278547 0.267844 0.257466 0.247431 0.237771 0.228508 0.219443 0.210667 0.202149 0.193973 0.186067 0.178434 0.171076 0.164015 0.157224 0.150613 0.144269 0.138113 0.132203 0.126495 0.12106 0.115791 0.110749 0.10583 0.101096 0.09653 0.092172 0.0879518 0.0838761 0.079964 0.0762066 0.072614 0.0691762 0.06589 0.0627614 0.0597582 0.0568678 0.054045 0.0513228 0.0487217 0.0462713 0.0439461 0.0417023 0.039557 0.037497 0.0355729 0.0337026 0.0319285 0.030236 0.028626 0.0270823 0.0255951 0.0241629 0.0228157 0.0215188 0.0202602 0.0190434 0.0178879 0.0167875 0.0157602 0.0147663 0.0138113 0.0129252 0.0120587 0.011246 0.0104677 0.00973069 0.00902 0.00834479 0.00769617 0.00706111 0.00647467 0.00589998 0.0053662 0.00485836 0.00437743 0.0039262 0.00348292 0.00308416 0.00270345 0.00234672 0.00201167 0.00169795 0.00140736 0.00113312 0.000867956 ];
Precision_GB = [0.198478 0.213325 0.238409 0.263907 0.288448 0.312344 0.335711 0.357749 0.377987 0.396837 0.414146 0.430309 0.445284 0.459036 0.471743 0.483738 0.494957 0.505277 0.514606 0.52321 0.531202 0.538681 0.545492 0.551687 0.557586 0.563174 0.56838 0.57323 0.577667 0.581753 0.585495 0.588954 0.592151 0.595029 0.597695 0.600252 0.602806 0.605225 0.607539 0.609715 0.611741 0.613621 0.615276 0.616763 0.618126 0.619234 0.620349 0.621512 0.622493 0.623391 0.62421 0.625142 0.625915 0.626544 0.627175 0.627629 0.628041 0.62839 0.628747 0.629032 0.629438 0.629722 0.629941 0.630327 0.630618 0.630764 0.630785 0.630953 0.631149 0.631434 0.631751 0.632057 0.632394 0.632533 0.632473 0.632477 0.632375 0.632398 0.632374 0.632443 0.632598 0.632541 0.632591 0.632527 0.632534 0.63247 0.632307 0.632264 0.632219 0.632265 0.631988 0.631596 0.631081 0.630782 0.630409 0.63046 0.630601 0.63039 0.630014 0.629848 0.630236 0.630879 0.631127 0.6318 0.63252 0.632785 0.633153 0.633378 0.633428 0.633821 0.633915 0.633769 0.634029 0.635055 0.635546 0.635687 0.635913 0.636128 0.636014 0.635497 0.636273 0.63647 0.638314 0.638841 0.640009 0.641083 0.640183 0.639381 ];

Recall_GC = [1 0.976391 0.961249 0.949163 0.93994 0.931149 0.92347 0.916931 0.91147 0.90557 0.900743 0.896451 0.891646 0.888002 0.88375 0.879399 0.875623 0.871981 0.868638 0.865329 0.861908 0.858402 0.855223 0.851475 0.848528 0.845313 0.842 0.838808 0.835616 0.832186 0.828333 0.82463 0.821345 0.817819 0.81436 0.8113 0.808382 0.805398 0.802463 0.799621 0.796286 0.793086 0.789613 0.785785 0.781435 0.77731 0.773662 0.769816 0.766412 0.762893 0.759758 0.756496 0.753305 0.749697 0.746243 0.742804 0.739208 0.735456 0.731289 0.727269 0.723997 0.72082 0.717588 0.71454 0.711556 0.708123 0.704606 0.701172 0.69721 0.693509 0.689125 0.684514 0.679832 0.675722 0.671725 0.667455 0.663657 0.659707 0.655717 0.651391 0.647397 0.643052 0.639149 0.63444 0.629258 0.624052 0.617721 0.612267 0.606148 0.601407 0.596928 0.592003 0.587408 0.582873 0.57849 0.573387 0.568349 0.563385 0.557244 0.551124 0.544087 0.538529 0.532806 0.527628 0.520875 0.514287 0.508349 0.502116 0.495523 0.488735 0.481861 0.472744 0.462861 0.45374 0.443062 0.432592 0.420799 0.409554 0.398168 0.38626 0.373295 0.359179 0.341663 0.321644 0.297922 0.264357 0.225788 0.16516 ];
Precision_GC = [0.198478 0.397163 0.502835 0.566581 0.607774 0.639633 0.66505 0.682319 0.697757 0.710953 0.720807 0.730153 0.739288 0.74785 0.756123 0.763915 0.770663 0.777519 0.782841 0.78772 0.792168 0.796521 0.800422 0.803965 0.808007 0.811668 0.815245 0.818443 0.822225 0.825753 0.829436 0.832004 0.834218 0.836625 0.838982 0.841138 0.842995 0.845073 0.84786 0.850062 0.852283 0.85418 0.856331 0.858989 0.861505 0.863472 0.865365 0.867097 0.868765 0.870955 0.872621 0.874114 0.875756 0.877441 0.878638 0.880025 0.881757 0.88309 0.884565 0.885639 0.88677 0.887931 0.889232 0.890548 0.891721 0.892643 0.893697 0.894702 0.8958 0.897101 0.89851 0.900185 0.901436 0.902433 0.903339 0.904206 0.904954 0.906011 0.9067 0.907339 0.908209 0.908975 0.909853 0.910514 0.911658 0.912334 0.912975 0.913541 0.914302 0.91484 0.91552 0.916159 0.916781 0.918579 0.919718 0.920332 0.920948 0.922452 0.922939 0.923802 0.924097 0.924868 0.925125 0.925195 0.925868 0.926754 0.927398 0.928264 0.929085 0.929471 0.929917 0.930262 0.930968 0.932086 0.934202 0.934933 0.936068 0.936688 0.937473 0.938491 0.940044 0.940752 0.941754 0.943465 0.943755 0.941727 0.943423 0.94465 ];

Recall_GU = [1 0.973711 0.961053 0.949876 0.941278 0.933412 0.926969 0.921414 0.916653 0.909881 0.905447 0.901898 0.89826 0.893416 0.889907 0.885968 0.882375 0.878644 0.87416 0.871207 0.867907 0.865013 0.86173 0.859055 0.856481 0.853317 0.850334 0.847475 0.843111 0.840407 0.83751 0.834816 0.832307 0.829275 0.826421 0.823625 0.820614 0.817935 0.814836 0.811998 0.809362 0.806801 0.804253 0.800775 0.796916 0.793352 0.789427 0.786181 0.783175 0.780427 0.777022 0.774399 0.771602 0.768614 0.764985 0.761282 0.758111 0.75385 0.750419 0.746899 0.743837 0.73976 0.736877 0.733141 0.729975 0.726369 0.723154 0.72045 0.716673 0.713711 0.710911 0.707647 0.703088 0.699338 0.694956 0.69102 0.687744 0.68414 0.680819 0.677709 0.6737 0.669999 0.666551 0.661426 0.656873 0.651963 0.645368 0.6401 0.634412 0.629837 0.625569 0.619933 0.614262 0.609716 0.603969 0.598203 0.592183 0.586547 0.581327 0.575834 0.568703 0.562392 0.556827 0.550885 0.544852 0.539538 0.53395 0.527184 0.520736 0.514377 0.505755 0.498278 0.489532 0.479368 0.468207 0.45724 0.446742 0.43603 0.426436 0.414551 0.401822 0.387081 0.372999 0.354253 0.332285 0.304277 0.267522 0.217633 ];
Precision_GU = [0.198478 0.378251 0.467623 0.519821 0.559693 0.590433 0.613704 0.632101 0.648587 0.662042 0.672076 0.682736 0.691576 0.698352 0.705898 0.71356 0.72029 0.725899 0.731649 0.736619 0.741526 0.746482 0.751545 0.755531 0.75939 0.763612 0.767237 0.771231 0.775235 0.779127 0.782559 0.785459 0.788618 0.791106 0.794317 0.797081 0.799235 0.801674 0.804097 0.806307 0.808537 0.81122 0.813445 0.81683 0.820111 0.822426 0.825059 0.827136 0.829312 0.831028 0.832588 0.834122 0.835635 0.837157 0.838594 0.84004 0.841651 0.843179 0.844842 0.846513 0.848151 0.849614 0.850924 0.852372 0.853288 0.854202 0.856292 0.857455 0.858436 0.859414 0.860576 0.862159 0.863381 0.864718 0.865628 0.866957 0.867987 0.868822 0.869828 0.870819 0.872083 0.873166 0.875073 0.876495 0.877361 0.878221 0.879329 0.88028 0.881468 0.882633 0.883821 0.885164 0.886003 0.887607 0.888096 0.889066 0.889956 0.890461 0.8911 0.89251 0.893624 0.894135 0.894635 0.895254 0.895868 0.896924 0.897522 0.899208 0.899617 0.900003 0.900375 0.901856 0.90316 0.903684 0.903947 0.904698 0.905741 0.906322 0.907554 0.908722 0.909836 0.911101 0.911915 0.913589 0.913591 0.914379 0.916315 0.916882 ];

Recall_HC = [1 0.995585 0.992378 0.989021 0.985848 0.982871 0.980127 0.977455 0.974691 0.971555 0.96845 0.965078 0.962015 0.959175 0.955868 0.953254 0.950627 0.947653 0.944654 0.940661 0.937351 0.934056 0.930795 0.927157 0.923867 0.919834 0.916203 0.912416 0.908312 0.904188 0.900137 0.896022 0.89199 0.888376 0.884415 0.880577 0.875967 0.871671 0.8675 0.863463 0.859449 0.855493 0.851342 0.847702 0.843981 0.839993 0.835985 0.831868 0.827842 0.823597 0.819228 0.814654 0.81018 0.804854 0.800756 0.796451 0.791563 0.786787 0.781499 0.776712 0.772072 0.767239 0.762745 0.757934 0.75326 0.746686 0.741498 0.736438 0.731457 0.725869 0.719556 0.714217 0.709296 0.703943 0.698302 0.692015 0.685373 0.679422 0.672369 0.666642 0.659495 0.653687 0.646121 0.639153 0.633177 0.627491 0.621809 0.615893 0.609401 0.60302 0.595692 0.589229 0.58249 0.575633 0.568293 0.561372 0.554084 0.546569 0.53858 0.530754 0.522243 0.51296 0.504124 0.494785 0.485549 0.475715 0.466431 0.457268 0.448019 0.438611 0.428889 0.419011 0.409189 0.398454 0.387643 0.376944 0.365895 0.354629 0.341901 0.328083 0.311538 0.296062 0.27924 0.258977 0.233565 0.205222 0.169273 0.118236 ];
Precision_HC = [0.198478 0.257878 0.286517 0.309326 0.330023 0.3479 0.364867 0.38141 0.397465 0.411593 0.42414 0.435903 0.44774 0.458477 0.468786 0.478929 0.488919 0.498958 0.508574 0.518817 0.528481 0.537098 0.545424 0.553877 0.562131 0.570181 0.576988 0.584501 0.591781 0.598299 0.604563 0.610744 0.61837 0.625006 0.630689 0.635872 0.640628 0.645282 0.649719 0.654066 0.658785 0.663285 0.667739 0.672565 0.676691 0.681838 0.686185 0.691332 0.695563 0.699382 0.703128 0.707273 0.71082 0.714706 0.718111 0.720949 0.724758 0.728047 0.732037 0.735408 0.738958 0.742601 0.746614 0.749675 0.752474 0.755427 0.757951 0.76135 0.765141 0.767345 0.769131 0.771809 0.773999 0.776385 0.778611 0.780259 0.78278 0.785403 0.786906 0.788695 0.790755 0.7923 0.793467 0.795265 0.798191 0.800584 0.802318 0.804106 0.805699 0.807945 0.810018 0.811412 0.812196 0.813491 0.814124 0.815917 0.816913 0.818043 0.819326 0.819917 0.820389 0.820215 0.820877 0.821043 0.821239 0.821456 0.822716 0.823868 0.824595 0.826051 0.826937 0.828101 0.829621 0.831074 0.83257 0.833482 0.833425 0.834344 0.833931 0.83441 0.834747 0.834615 0.835047 0.835158 0.836684 0.83729 0.837963 0.843509 ];

Recall_IG = [1 0.992911 0.985191 0.976646 0.967608 0.958373 0.949126 0.939777 0.930275 0.920675 0.911158 0.901782 0.892362 0.882966 0.873543 0.864 0.854407 0.844941 0.835282 0.825733 0.816105 0.806514 0.796979 0.787261 0.777527 0.767771 0.757984 0.748201 0.738578 0.728864 0.719218 0.709561 0.699857 0.690527 0.680672 0.670949 0.661273 0.651618 0.641951 0.632173 0.622019 0.611304 0.601165 0.591217 0.581302 0.57144 0.561653 0.551828 0.541956 0.532095 0.522258 0.512389 0.502578 0.493025 0.483576 0.474062 0.464571 0.455173 0.445878 0.436447 0.427219 0.418156 0.40928 0.400389 0.391978 0.383385 0.374684 0.36596 0.357134 0.348553 0.340089 0.331703 0.32328 0.314908 0.306611 0.298465 0.290199 0.281915 0.273668 0.265306 0.257037 0.249104 0.241334 0.233556 0.225951 0.218429 0.211048 0.203823 0.196624 0.189594 0.18278 0.176046 0.169311 0.162582 0.155969 0.149439 0.143178 0.136792 0.130345 0.123885 0.11756 0.111243 0.10509 0.099125 0.09326 0.0874836 0.0818388 0.0763833 0.0709128 0.0656046 0.0603848 0.0551491 0.0501343 0.0451978 0.0400957 0.0355998 0.031565 0.0277657 0.0242533 0.0210105 0.0179323 0.0151827 0.0124457 0.0100106 0.00779483 0.00571292 0.00393504 0.00180448 ];
Precision_IG = [0.198478 0.209464 0.226298 0.246075 0.267286 0.289586 0.316352 0.340996 0.364231 0.38639 0.406973 0.426761 0.446929 0.465552 0.483501 0.500476 0.516069 0.531069 0.545805 0.560215 0.573436 0.58707 0.599405 0.611293 0.622695 0.633773 0.643606 0.653036 0.661896 0.671014 0.679543 0.687891 0.69587 0.70282 0.709295 0.715597 0.72139 0.726911 0.73214 0.737594 0.74251 0.747171 0.751621 0.755577 0.759999 0.763808 0.767133 0.770273 0.773311 0.77623 0.77892 0.781063 0.782931 0.784692 0.786942 0.788844 0.790199 0.791922 0.793971 0.795701 0.797162 0.798456 0.799941 0.801918 0.80484 0.806724 0.80805 0.808993 0.809806 0.810622 0.812079 0.813541 0.814878 0.816338 0.817779 0.819356 0.82053 0.82149 0.82263 0.822922 0.823254 0.823569 0.823833 0.824515 0.825153 0.825472 0.826139 0.827071 0.827615 0.828343 0.828839 0.828978 0.828834 0.828691 0.828553 0.828484 0.828336 0.828043 0.828133 0.828659 0.829021 0.828839 0.828869 0.829053 0.82843 0.827908 0.827563 0.827309 0.827379 0.828023 0.828738 0.829022 0.829417 0.829838 0.829608 0.829745 0.829709 0.829894 0.830121 0.830664 0.831046 0.831123 0.830287 0.829876 0.829822 0.830849 0.831638 0.830614 ];

hold on;
plot(Recall_AIM, Precision_AIM ,'linewidth',2);
plot(Recall_GB, Precision_GB,'c', 'linewidth',2);
plot(Recall_GC, Precision_GC,'color','red', 'linewidth',2);
plot(Recall_GU, Precision_GU, '--','linewidth',7);
plot(Recall_HC, Precision_HC,'.', 'linewidth',2);
plot(Recall_IG, Precision_IG,'x', 'linewidth',6);
hold off;

xlabel('Recall');
ylabel('Precision');
title('Precision recall curve');
legend('AIM', 'GB','GC', 'GU' , 'HC', 'IG', 'Location','southwest');
grid on;

% plot(Recall_AIM, Precision_AIM, Recall_GB, Precision_GB, Recall_GC, Precision_GC, Recall_GU, Precision_GU, Recall_HC, Precision_HC, Recall_IG, Precision_IG);

