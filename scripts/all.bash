#!/bin/bash 

declare -a arr=('themixster.com'
                'thefieldset.com'
                'theampalcreative.com'
                'smogla.com'
                'shiftyrhythms.com'
                'rollingtuff.com' 
                'evelastnight.com'  
                'pointblanklondon.com'  
                'dkurtz.tumblr.com'  
                'ourelectricgeneration.com'  
                'ocsdbeats.com'  
                'noharmnofowl.net'  
                'nashvillenightsblog.com'  
                'milehighdisco.com'  
                'metamimetic.com'  
                'mediacontender.com'  
                'magneticmagazine.com'  
                'indieshuffle.com'  
                'hotbiscuits.wordpress.com'  
                'gottadancedirty.com'
                'dscotech.com'
                'danceism.com'
                'chemicaljump.com'
                'abigcitydied.com'
                '310electro.com')

for site in ${arr[@]}; do
  #echo $site  
  ./fetch.bash $site 20 
done
