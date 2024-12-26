# Script Hakkında ve Kullanım

## FiveM için araç handlingini oyun içinden canlı olarak düzenlemenize yardımcı olur.

## Bir araçtayken "ALT" tuşuna bastığınızda editör önünüze gelir ve gereken düzenlemeyi oradan yapabilirsiniz.

> [!CAUTION]
> Unutmayın! editörde anlık olarak düzenlediğiniz ayarlar aracın dosyalarına kaydedilmez. Yapılan handling sadece bulunduğunuz araca işlenir ve araç silinince ayarlar sıfırlanır. Bu yüzden yaptığınız ayarı uygun gördüğünüz anda editörün en üstünde bulunan handlingi kopyala butonuna basmanız gerekek ve bu ayarı düzenlemesini yaptığınız aracın handling.meta içine işlemeniz gerekli.

> [!NOTE]
> Handlig işlerken dikkat etmeniz gereken kısım kopyaladğınız handlingi yapıştıracağınız zaman handling.meta da bulunan <fMass ve <nMonetaryValue arasındaki kısımlara yapıştırmanız gerekli. Aksi halde handling hatası alabilirsiniz.

> [!TIP]
> Eğer handlinginizin işlenmediğini düşünüyorsanız vehicles.meta içindeki ```<handlingId>tenf2</handlingId>``` kısmını kontrol edin ve handling.metadaki ```<handlingName>tenf2</handlingName>``` ile eşleştiğinden emin olun. Aracınız buradaki ismi handling.meta içinde bulamadığı için handling ayarınız işlenmemiş olabilir veya bu isimde başka bir handling ayarı olabilir.

## Örnek bir handling.meta

``` 
<?xml version="1.0" encoding="UTF-8"?>

<CHandlingDataMgr>
  <HandlingData>
    <Item type="CHandlingData">
      <handlingName>tenf2</handlingName>

      <fMass value="1395.000000" />               <!-- Buradan kopyaladığınız handlingi işlemeye başlayabilirsiniz -->
      <fInitialDragCoeff value="8.0" />
      <fPercentSubmerged value="85.000000" />
      <vecCentreOfMassOffset x="0.000000" y="0.000000" z="0.000000" />
      <vecInertiaMultiplier x="1.000000" y="1.600000" z="2.100000" />
      <fDriveBiasFront value="0.30" />
      <nInitialDriveGears value="6" />
      <fInitialDriveForce value="0.40" />
      <fDriveInertia value="1.0" />
      <fClutchChangeRateScaleUpShift value="4.000000" />
      <fClutchChangeRateScaleDownShift value="3.800000" />
      <fInitialDriveMaxFlatVel value="265.000000" />
      <fBrakeForce value="1.85" />
      <fBrakeBiasFront value="0.400000" />
      <fHandBrakeForce value="1.200000" />
      <fSteeringLock value="45.000000" />
      <fTractionCurveMax value="5.5" />
      <fTractionCurveMin value="3.5" />
      <fTractionCurveLateral value="22.500000" />
      <fTractionSpringDeltaMax value="0.150000" />
      <fLowSpeedTractionLossMult value="1.100000" />
      <fCamberStiffnesss value="0.000000" />
      <fTractionBiasFront value="0.40" />
      <fTractionLossMult value="1.400000" />
      <fSuspensionForce value="2.300000" />
      <fSuspensionCompDamp value="1.400000" />
      <fSuspensionReboundDamp value="1.000000" />
      <fSuspensionUpperLimit value="0.1150000" />
      <fSuspensionLowerLimit value="-0.1550000" />
      <fSuspensionRaise value="-0.040000" />
      <fSuspensionBiasFront value="0.550000" />
      <fAntiRollBarForce value="0.700000" />
      <fAntiRollBarBiasFront value="0.300000" />
      <fRollCentreHeightFront value="0.30" />
      <fRollCentreHeightRear value="0.30" />
      <fCollisionDamageMult value="0.700000" />
      <fWeaponDamageMult value="1.000000" />
      <fDeformationDamageMult value="0.700000" />
      <fEngineDamageMult value="1.500000" />
      <fPetrolTankVolume value="65.000000" />
      <fOilVolume value="5.000000" />
      <fSeatOffsetDistX value="0.000000" />
      <fSeatOffsetDistY value="-0.150000" />
      <fSeatOffsetDistZ value="0.050000" />
      <nMonetaryValue value="35000" />           <!-- Burada bitirmelisiniz ! -->

      <strModelFlags>440010</strModelFlags>
      <strHandlingFlags>2</strHandlingFlags>
      <strDamageFlags>20</strDamageFlags>
      <AIHandling>AVERAGE</AIHandling>
      <SubHandlingData>
        <Item type="CCarHandlingData">
          <fBackEndPopUpCarImpulseMult value="0.100000" />
          <fBackEndPopUpBuildingImpulseMult value="0.030000" />
          <fBackEndPopUpMaxDeltaSpeed value="0.600000" />
        </Item>
        <Item type="NULL" />
        <Item type="NULL" />
      </SubHandlingData>
    </Item>
  </HandlingData>
</CHandlingDataMgr>
```

# Açıklama

## Selamlar,
### Yıllar önce bir arkadaşımızın vehicleDebug adında bizlere sunduğu handling editor scriptini türkçeleştirip sizlere sunmaya karar verdim.


# Credits

## Thanks to :  https://github.com/kerminal/vehicleDebug