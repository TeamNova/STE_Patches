echo -e $CL_BLU"Cherrypicking ART fix"$CL_RST
cd art
git fetch https://github.com/cernekee/android_art monitor-stack-v1
git cherry-pick fc2ac71d0d9e147c607bff9371fe2ef25d8470af
cd ..
echo -e $CL_BLU"Cherrypicking OMX Patch - android_frameworks_av"$CL_RST
cd frameworks/av
git fetch https://github.com/TeamCanjica/android_frameworks_av cm-11.0
git cherry-pick 803bb5dd145630c0239a61bd4d58c3728f2dba57
cd ..
echo -e $CL_BLU"Cherrypicking OMX Patch - android_frameworks_native"$CL_RST
cd native
git fetch https://github.com/TeamCanjica/android_frameworks_native cm-11.0
git cherry-pick 8dd8f0c8b8872affa37a2f50953f07d4815f2fec
cd ..
echo -e $CL_BLU"Cherrypicking OMX Patch - android_frameworks_base"$CL_RST
cd base
git fetch https://github.com/TeamCanjica/android_frameworks_base cm-11.0
git cherry-pick 3826055d49ec70ab3d0e130a8e444fd334806fa5
cd ../..
echo -e $CL_BLU"Cherrypicking Core Patch - OMX and reboot/shutdown fix"$CL_RST
cd system/core
git fetch https://github.com/TeamCanjica/android_system_core cm-11.0
git cherry-pick 7bd81ee140c09066ede2ffab47da1a1c4e54e021
git cherry-pick b6cb91b1f70c969bb0f818a24111c0ca055be590
cd ..
echo -e $CL_BLU"Cherrypicking vold patch to allow switching storages"$CL_RST
cd vold
git fetch http://review.cyanogenmod.org/CyanogenMod/android_system_vold refs/changes/15/56515/3
git cherry-pick FETCH_HEAD
cd ../..
echo -e $CL_BLU"Cherrypicking vibrator fix"$CL_RST
cd hardware/libhardware_legacy
git fetch https://github.com/TeamCanjica/android_hardware_libhardware_legacy cm-11.0
git cherry-pick 9c2250d32a1eda9afe3b5cefe3306104148aa532
cd ../..
echo -e $CL_BLU"Cherrypicking low in-call volume fix"$CL_RST
cd packages/services/Telephony
git fetch https://github.com/TeamCanjica/android_packages_services_Telephony cm-11.0
git cherry-pick fdf281fdabe5e7517eb96f2faf159bbcc74ae4a6
cd ../../..
echo -e $CL_BLU"Cherrypicking \"OK Google\" fix"$CL_RST
cd frameworks/base
git fetch https://github.com/TeamCanjica/android_frameworks_base cm-11.0
git cherry-pick bb9d91d07fdc20c2443c9668e2f20e392b25bac4
cd ../../
