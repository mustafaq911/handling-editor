Config = {
	Fields = {
		{ name = "fMass", type = "float", description = [[
			The weight of the vehicle. Values should be given in Kilograms.
			<ul>
				<li>Araç başka bir araçla veya statik olmayan bir nesneyle çarpıştığında kullanılır.</li>
			</ul>
		]] },
		{ name = "fInitialDragCoeff", type = "float", description = [[
			Aracın sürtünme katsayısını ayarlar. Aerodinamik çekişi simüle etmek için artırın.
			<ul>
				<li>Değer: 10-120</li>
			</ul>
		]] },
		{ name = "fDownforceModifier", type = "float" },
		{ name = "fPercentSubmerged", type = "float", description = [[
			Aracın suya düştükten sonra, batmadan önce "yüzer yüksekliğinin" yüzdesi.
			<ul>
				<li>Varsayılan - Vanilya, kara araçları için %85. Değer, batmadan önce bir an için aracın yüzmesini durduracaktır. Tekneler hariç.</li>
				<li>Değer: Herhangi bir yüzde. Ondalık olarak verilmelidir. Örnek: 0.70 (%70)</li>
				<li>Geçersiz bir numara, sürücü boğulmadan aracın batmasına neden olur.</li>
			</ul>
		]] },
		{ name = "vecCentreOfMassOffset", type = "vector", description = [[
			Ağırlık merkezini metre cinsinden bir yandan diğer yana kaydırır.<br>
			Değerler (0, ağırlık merkezinin aracın merkezinde olacağı anlamına gelir):
			<ul>
				<li>X: -10.0 ila 10.0. Pozitif değerler ağırlık merkezini sağa kaydırır.</li>
				<li>Y: -10.0 ila 10.0. Pozitif değerler ağırlık merkezini ileri doğru hareket ettirir.</li>
				<li>Z: -10.0 ila 10.0. Pozitif değerler ağırlık merkezini yukarı doğru hareket ettirir.</li>
			</ul>
		]] },
		{ name = "vecInertiaMultiplier", type = "vector" },
		{ name = "fDriveBiasFront", type = "float", description = [[
			Bu, bir aracın önden mi, arkadan mı yoksa dört tekerlekten çekişli mi olduğunu belirlemek için kullanılır.<br>Değerler:
			<ul>
				<li>0.0 aracın arkadan çekişli olduğu anlamına gelir.</li>
				<li>1.0 aracın önden çekişli olduğu anlamına gelir.</li>
				<li>0,01 ile 0,99 arasındaki herhangi bir değer dört tekerlekten çekiştir.</li>
				<li>0,5, hem ön hem de arka akslara eşit güç verir, mükemmel 4x4 olur.</li>
			</ul>
		]] },
		{ name = "nInitialDriveGears", type = "integer", description = [[
			Bu çizgi, bir aracın şanzımanının kaç ileri hız/vites içerdiğini belirler.<br>
            Değerler: 1 veya daha fazla.
		]] },
		{ name = "fInitialDriveForce", type = "float", description = [[
			Bu, oyunun çekiş kuvveti hesaplamasını değiştirir (şanzımanın çıktısından).<br>
            Değerler (0.01 - 2.0 ve üzeri):
			<ul>
				<li>1.0 değiştirilmemiş çekiş kuvveti hesaplamasını kullanır.</li>
				<li>1.0'dan düşük değerler, aslında araca daha az çekiş gücü verir.</li>
				<li>1.0'dan büyük değerler daha fazla çekiş kuvveti üretecektir.</li>
			</ul>
		]] },
		{ name = "fDriveInertia", type = "float", description = [[
			Bir motorun ne kadar hızlı devir yapacağını açıklar.
			Değerler (0.01 - 2.0):
			<ul>
				<li>Varsayılan değer 1.0'dır (veya sürücü eylemsizliğinde değişiklik yapılmaz).</li>
				<li>Daha büyük değerler = daha hızlı devir artışı (maksimum motor devri)</li>
			</ul>
		]] },
		{ name = "fClutchChangeRateScaleUpShift", type = "float", description = [[
			Yukarı viteslerde debriyaj hızı çarpanı.
			<ul>
				<li>Daha büyük sayılar = daha hızlı vites değiştirme.</li>
			</ul>
		]] },
		{ name = "fClutchChangeRateScaleDownShift", type = "float", description = [[
			Vites küçültmede debriyaj hızı çarpanı.
			<ul>
				<li>Daha büyük sayılar = daha hızlı vites değiştirme.</li>
			</ul>
		]] },
		{ name = "fInitialDriveMaxFlatVel", type = "float", description = [[
			Bu, en üst viteste (gösteri değil) kırmızı çizgideki araç hızını belirler. Bu değerin ayarlanması aracın verilen hıza ulaşacağını garanti ETMEZ.<br>
            Değerler (0.00 ve üzeri):
			<ul>
				<li>Hızı mph cinsinden bulmak için dosyadaki sayıyı 0-82 ile çarpın.</li>
				<li>Hızı km/s olarak elde etmek için 1,32 ile çarpın.</li>
			</ul>
		]] },
		{ name = "fBrakeForce", type = "float", description = [[
			Oyunun frenleme hesaplamasını çarpar.<br>
            Değerler (0.01 - 2.0 ve üzeri):
			<ul>
				<li>Daha büyük sayılar = daha sert frenleme.</li>
				<li>1.0, değiştirilmemiş fren kuvveti hesaplamasını kullanır.</li>
			</ul>
		]] },
		{ name = "fBrakeBiasFront", type = "float", description = [[
			Bu hat, fren kuvvetinin ön ve arka akslar arasındaki dağılımını kontrol eder.<br>
            Değerler:
			<ul>
				<li>0.0, yanlızca arka aksın fren kuvveti aldığı anlamına gelir.</li>
				<li>1.0 yanlızca ön aksın fren kuvveti aldığı anlamına gelir.</li>
				<li>0,5, her iki aksa da eşit fren kuvveti verir.</li>
				<li>0,01 ile 0,49 arasındaki değerler, arka aksın daha fazla fren kuvveti alacağı anlamına gelir.</li>
				<li>0,51 ile 0,99 arasındaki değerler, ön aksların arka akslardan daha fazla fren kuvveti alacağı anlamına gelir.</li>
			</ul>
		]] },
		{ name = "fHandBrakeForce", type = "float", description = [[
			El freninin frenleme gücü.<br>
			Değerler (0.0 and üzeri):
			<ul>
				<li>Daha büyük sayılar = daha sert frenleme.</li>
			</ul>
		]] },
		{ name = "fSteeringLock", type = "float", description = [[
             Bu, oyunun direksiyon simidinin tam dönüşte döneceği açı hesaplamasını çarpar. Direksiyon kilidi, aşırı/az yönlendirme ile doğrudan ilişkilidir.<br>
	        Değerler (0.0 ve üzeri):
			<ul>
				<li>0.1 - 0.2 arasındaki değerler uzun bir dingil mesafesini simüle eder.</li>
				<li>0,75 ve üzeri değerler son derece hızlı dönecektir. Daha yüksek değerler aracın kolayca patinaj yapmasına neden olur.</li>
			</ul>
		]] },
		{ name = "fTractionCurveMax", type = "float", description = [[
			Lastik yüzey sürtünmesinin bir çarpanı olarak aracın viraj tutuşu.
		]] },
		{ name = "fTractionCurveMin", type = "float", description = [[
			Lastik yüzey sürtünmesinin bir çarpanı olarak aracın hızlanma/fren tutuşu.
		]] },
		{ name = "fTractionCurveLateral", type = "float", description = [[
			Yanal çekiş eğrisinin şekli.
		]] },
		{ name = "fTractionSpringDeltaMax", type = "float", description = [[
			Bu değer, aracın yerden ne kadar yukarıda çekişini kaybedeceğini belirler.
		]] },
		{ name = "fLowSpeedTractionLossMult", type = "float", description = [[
			Düşük hızda ne kadar çekiş azalır.
			<ul>
				<li>0.0, normal çekiş anlamına gelir. Gaza basıldığında esas olarak arabanın burnout yapmasını etkiler (W/UP).</li>
				<li>Değeri düşürmek daha az burnout'a, başlangıçta daha az kaymaya neden olur.</li>
				<li>Daha yüksek değer daha fazla burnout'a neden olur.</li>
			</ul>
		]] },
		{ name = "fCamberStiffnesss", type = "float", description = [[
			Bu değer, drift yaparken arabanın tutuşunu değiştirir.
			<ul>
				<li>0'dan fazla olması, arabanın sürüklendiğiniz açıyla kaymasını sağlar.</li>
				<li>0'dan az olması, aracınızın aşırı savrulmasına neden olur.</li>
				<li>Kavrama için değiştirmeniz önerilmez.</li>
			</ul>
		]] },
		{ name = "fTractionBiasFront", type = "float", description = [[
			Önden arkaya çekiş dağılımını belirler.<br>
            değerler (0.01 - 0.99):
			<ul>
				<li>0.01 = sadece arka aksta çekiş vardır.</li>
				<li>0.99 = sadece ön aksta çekiş vardır.</li>
				<li>0.5 = her iki aks da eşit çekişe sahiptir.</li>
				<li>0.0 veya 1.0 değerinin girilmesi aracın çekişinin olmamasına neden olur.</li>
			</ul>
		]] },
		{ name = "fTractionLossMult", type = "float", description = [[
			Asfalt ve çamurda sürerken ne kadar yol tutuşunun değiştiğini etkiler.
			<ul>
				<li>Daha yüksek değerler, arabayı daha az tepki verir ve kaymaya meyilli hale getirir.</li>
			</ul>
		]] },
		{ name = "fSuspensionForce", type = "float", description = [[
			Süspansiyonun ne kadar güçlü olduğunu etkiler.<br>
			<ul>
				<li>1 / (Kuvvet * Tekerlekler) = Tam uzamada sıfır kuvvet için alt sınır.</li>
			</ul>
		]] },
		{ name = "fSuspensionCompDamp", type = "float", description = [[
			Destek sıkıştırması sırasında sönümleme.
			<ul>
				<li>Daha büyük değerler = daha sert.</li>
			</ul>
		]] },
		{ name = "fSuspensionReboundDamp", type = "float", description = [[
			payanda geri tepmesi sırasında sönümleme.
		]] },
		{ name = "fSuspensionUpperLimit", type = "float", description = [[
			Tekerleklerin orijinal konumundan ne kadar yukarı / aşağı hareket edebileceğinin görsel sınırı.
		]] },
		{ name = "fSuspensionLowerLimit", type = "float", description = [[
			Tekerleklerin orijinal konumundan ne kadar yukarı / aşağı hareket edebileceğinin görsel sınırı.
		]] },
		{ name = "fSuspensionRaise", type = "float", description = [[
			Süspansiyonun gövdeyi tekerleklerden kaldırdığı miktar.
		]] },
		{ name = "fSuspensionBiasFront", type = "float", description = [[
			Bu değer, hangi süspansiyonun daha güçlü, ön veya arka olduğunu belirler..
			<ul>
				<li>Değer 0,50'nin üzerindeyse ön daha sert, aşağıdayken arka daha sert.</li>
			</ul>
		]] },
		{ name = "fAntiRollBarForce", type = "float", description = [[
			Daha Büyük Sayılar = daha az gövde rulosu.
		]] },
		{ name = "fAntiRollBarBiasFront", type = "float", description = [[
			Viraj denge çubuğu için ön ve arka arasındaki önyargı.
			<ul>
				<li>0 = Ön</li>
				<li>1 = Arka</li>
			</ul>
		]] },
		{ name = "fRollCentreHeightFront", type = "float", description = [[
			Değerler (Önerilen -0,15 ila 0,15):
			<ul>
				<li>Daha Büyük Sayılar = daha az rollover.</li>
			</ul>
		]] },
		{ name = "fRollCentreHeightRear", type = "float", description = [[
			Bu değer, ön ve arka arasında bir hızlanma sırasında ağırlık aktarımını değiştirir. yüksek pozitif değer, arabanızın tekerlek kayması yapmasını sağlayabilir.<br>
            Değerler (Önerilen -0,15 ila 0,15):
			<ul>
				<li>Daha Büyük Sayılar = daha az devrilme.</li>
			</ul>
		]] },
		{ name = "fCollisionDamageMult", type = "float", description = [[
			Oyunun çarpışma ile araca verilen hasar hesaplamasını çarpar.
		]] },
		{ name = "fWeaponDamageMult", type = "float", description = [[
			Oyunun araca verilen hasar hesaplamasını silahlarla çarpar.
		]] },
		{ name = "fDeformationDamageMult", type = "float", description = [[
			Oyunun deformasyon hasarı hesaplamasını çarpar.
		]] },
		{ name = "fEngineDamageMult", type = "float", description = [[
			Oyunun motordaki hasar hesaplamasını çarparak patlamaya veya motor arızasına neden olur.
		]] },
		{ name = "fPetrolTankVolume", type = "float", description = [[
			Bir aracın deposuna zarar verdikten sonra sızacak benzin miktarı.
		]] },
		{ name = "fOilVolume", type = "float", description = [[
			Yakıt Deposu.
		]] },
		{ name = "fSeatOffsetDistX", type = "float", description = [[
			Değer: Sürücü > Yolcu
		]] },
		{ name = "fSeatOffsetDistY", type = "float", description = [[
			Değer: Bagaj > Kaput
		]] },
		{ name = "fSeatOffsetDistZ", type = "float", description = [[
			Değer: Alt Kısım > Çatı
		]] },
		{ name = "nMonetaryValue", type = "integer" },
	},
	Types = {
		["float"] = {
			getter = GetVehicleHandlingFloat,
			setter = function(vehicle, _type, fieldName, value)
				local value = tonumber(value)
				if value == nil then error("value not number") end

				SetVehicleHandlingFloat(vehicle, _type, fieldName, value + 0.0)
			end,
		},
		["integer"] = {
			getter = GetVehicleHandlingInt,
			setter = function(vehicle, _type, fieldName, value)
				local value = tonumber(value)
				if value == nil then error("value not number") end

				SetVehicleHandlingInt(vehicle, _type, fieldName, math.floor(value))
			end,
		},
		["vector"] = {
			getter = GetVehicleHandlingVector,
			setter = function(vehicle, _type, fieldName, value)
				local axes = 1
				local vector = {}

				for axis in value:gmatch("([^,]+)") do
					vector[axes] = tonumber(axis)
					axes = axes + 1
				end

				for i = 1, 3 do
					if vector[i] == nil then
						error("invalid vector", i)
					end
				end

				SetVehicleHandlingVector(vehicle, _type, fieldName, vector3(vector[1], vector[2], vector[3]))
			end,
		},
	},
}