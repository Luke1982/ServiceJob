{strip}<style type="text/css">
{literal}
	table.thinborder td {
        border-style: solid solid solid solid;
        border-width: 0.1px 0.1px 0.1px 0.1px;
        border-color: #000 #000 #000 #000;
	}
	span.smalltext {
		font-size: 6px;
	}
	@media screen {
		span.smalltext {
			font-size: 10px;
		}
	}
{/literal}
</style>
<div id="report_filename" style="display: none">keuring_nulemissie_{$reportmeta.accountname}_{$reportmeta.date}</div>
<table border="0" cellpadding="1" cellspacing="0" width="100%">
	<tbody>
		<tr>
			<td style="background-color:rgb(204, 204, 204); text-align:center; border: 0.1px solid #000;">REGISTRATIE FORMULIER CRF-3 VOOR GEBRUIK BIJ HERKEURING 0-EMISSIEKASTEN</td>
		</tr>
	</tbody>
</table>
<p></p>
<table border="0" cellpadding="1" cellspacing="0" width="100%">
	<tbody>
		<tr>
			<td style="width:20%">
				<img alt="" src="storage/images/Logo_CBX_zwart_wit.png" style="float:left; height:65px; width:65px" />
			</td>
			<td style="width:20%">
				<p style="font-size: 8px;">{$reportmeta.company.address}<br />{$reportmeta.company.code}, {$reportmeta.company.city}</p>
				<p style="font-size: 8px;">{$reportmeta.company.website}</p>
				<p style="font-size: 8px;">Tel. {$reportmeta.company.phone}</p>
			</td>
			<td style="width:60%">
			<table align="right" border="0" cellpadding="3" cellspacing="0" width="100%" class="thinborder" style="border-collapse:collapse;">
				<tbody>
					<tr>
						<td colspan="4" style="background-color:rgb(153, 153, 153); text-align:center; border: 0.1px solid #000;"><span><strong>KLANT / NUL EMISSIE KAST GEGEVENS</strong></span></td>
					</tr>
					<tr>
						<td style="background-color:rgb(204, 204, 204); text-align:right; width:20%;"><span class="smalltext">Bedrijfsnaam</span></td>
						<td style="width:30%; text-align:left;"><span>{$reportmeta.accountname}</span></td>
						<td style="background-color:rgb(204, 204, 204); text-align:right; width:20%;"><span class="smalltext">Merk meetmiddel</span></td>
						<td style="width:30%; text-align:left; border: 0.1px solid #000;"><span>{$reportmeta.cf_543}</span></td>
					</tr>
					<tr>
						<td style="background-color:rgb(204, 204, 204); text-align:right; width:20%;"><span class="smalltext">Adres</span></td>
						<td style="width:30%; text-align:left;"><span>{$reportmeta.ship_street}</span></td>
						<td style="background-color:rgb(204, 204, 204); text-align:right; width:20%;"><span class="smalltext">Type meetmiddel</span></td>
						<td style="width:30%; text-align:left;"><span>{$reportmeta.productname}</span></td>
					</tr>
					<tr>
						<td style="background-color:rgb(204, 204, 204); text-align:right; width:20%;"><span class="smalltext">PC / Plaats</span></td>
						<td style="width:30%; text-align:left;"><span>{$reportmeta.ship_code}&nbsp;{$reportmeta.ship_city}</span></td>
						<td style="background-color:rgb(204, 204, 204); text-align:right; width:20%;"><span class="smalltext">Serienummer</span></td>
						<td style="width:30%; text-align:left;"><span>{$reportmeta.serialnumber}</span></td>
					</tr>
					<tr>
						<td style="background-color:rgb(204, 204, 204); text-align:right; width:20%;"><span class="smalltext">KI Nummer</span></td>
						<td style="width:30%; text-align:left;"><span>{$reportmeta.cf_548}</span></td>
						<td style="background-color:rgb(204, 204, 204); text-align:right; width:20%;"><span class="smalltext">Verloopdatum</span></td>
						<td style="width:30%; text-align:left;"><span>{$reportmeta.cf_731|date_format:'%d-%m-%Y'}</span></td>
					</tr>
				</tbody>
			</table>
			</td>
		</tr>
	</tbody>
</table>
<p></p>
<table border="0" cellpadding="3" cellspacing="0" width="100%" style="border-collapse:collapse;" class="thinborder">
	<tbody>
		<tr>
			<td style="background-color:rgb(204, 204, 204); width:60%"><span><strong>Initiële controles</strong></span></td>
			<td style="background-color:rgb(204, 204, 204); width:10%"><span>Ja / Goed</span></td>
			<td style="background-color:rgb(204, 204, 204); width:10%"><span>Goed na reparatie of onderzoek</span></td>
			<td style="background-color:rgb(204, 204, 204); width:10%"><span>Nee / fout</span></td>
			<td style="background-color:rgb(204, 204, 204); width:10%"><span>N.V.T.</span></td>
		</tr>
		<tr>
			<td style=" width:60%">Zijn alle opschriften op het typeplaatje aanwezig en conform de toelating?</td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.sticker_controle == 'ja'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.sticker_controle == 'na_reparatie'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.sticker_controle == 'nee'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.sticker_controle == 'nvt'}X{/if}</strong></td>
		</tr>
		<tr>
			<td style=" width:60%">Wordt de juiste roetmeter in combinatie met de nulemissiekast gebruikt volgens het testcertificaat?</td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.roetmeter_controle == 'ja'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.roetmeter_controle == 'na_reparatie'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.roetmeter_controle == 'nee'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.roetmeter_controle == 'nvt'}X{/if}</strong></td>
		</tr>
		<tr>
			<td style=" width:60%">Zijn alle innerlijke en uiterlijke kenmerken conform tekeningen in gewaarborgde documentatie?</td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.beschadiging_controle == 'ja'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.beschadiging_controle == 'na_reparatie'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.beschadiging_controle == 'nee'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.beschadiging_controle == 'nvt'}X{/if}</strong></td>
		</tr>
		<tr>
			<td style=" width:60%">Zijn de lengte en diameter van de slang(en) conform het typecertificaat?</td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.slang_controle == 'ja'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.slang_controle == 'na_reparatie'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.slang_controle == 'nee'}X{/if}</strong></td>
			<td style="text-align:center; width:10%"><strong>{if $reportvalues.slang_controle == 'nvt'}X{/if}</strong></td>
		</tr>
		<tr>
			<td colspan="1">
				<span>Zijn alle onderdelen vrij van obstakels, verstoppingen? Zijn alle bewegende delen vrij van speling­ en soepel te bewegen?</span>
			</td>
			<td colspan="4">
				<table border="0" cellpadding="4" cellspacing="0" width="100%" class="thinborder">
					<tbody>
						<tr>
							<td width="60%">&nbsp;</td>
							<td width="20%" style="text-align: center; background-color:rgb(204, 204, 204);">JA</td>
							<td width="20%" style="text-align: center; background-color:rgb(204, 204, 204);">NEE</td>
						</tr>
						<tr>
							<td>Sondebuis vrij?</td>
							<td style="text-align: center; font-weight: bold;">{if $reportvalues.sondebuis_controle == 'ja'}X{/if}</td>
							<td style="text-align: center; font-weight: bold;">{if $reportvalues.sondebuis_controle == 'nee'}X{/if}</td>
						</tr>
						<tr>
							<td>Beweegt de klep soepel?</td>
							<td style="text-align: center; font-weight: bold;">{if $reportvalues.klep_controle == 'ja'}X{/if}</td>
							<td style="text-align: center; font-weight: bold;">{if $reportvalues.klep_controle == 'nee'}X{/if}</td>
						</tr>
						<tr>
							<td>Uitlaatslang vrij?</td>
							<td style="text-align: center; font-weight: bold;">{if $reportvalues.uitlaatslang_controle == 'ja'}X{/if}</td>
							<td style="text-align: center; font-weight: bold;">{if $reportvalues.uitlaatslang_controle == 'nee'}X{/if}</td>
						</tr>
					</tbody>
				</table>
			</td>
		</tr>
	</tbody>
</table>
<p></p>
<table border="0" cellpadding="2" cellspacing="0" class="thinborder" width="100%" style="border-collapse:collapse;">
	<tbody>
		<tr>
			<td colspan="8" style="background-color:rgb(153, 153, 153); text-align:center;"><strong>RESULTAAT WINDSNELHEIDSMETINGEN</strong></td>
		</tr>
		<tr>
			<td colspan="2" valign="bottom" style="vertical-align:bottom; width:25%"><img alt="" src="storage/images/kwadranten-windsnelheidsmeting.jpg" style="height:128px; width:150px" />
				<p>Meet in de opening van de slang op vier punten de windsnelheid.</p>
			</td>
			<td colspan="2" valign="bottom" style="vertical-align:bottom; width:25%">Noteer hieronder de gemeten windsnelheden per kwadrant</td>
			<td colspan="4" style="width:50%">Gebruik de volgende formule om het afzuigdebiet / volume te berekenen:<br />
			Q = v * &pi; * d2 * 900 (bij 150mm Q = v * 63,585)<p></p>
				<table border="0" cellpadding="2" cellspacing="0" class="thinborder" width="100%" style="border-collapse:collapse; font-size: 6px;">
					<tbody>
						<tr>
							<td colspan="2" style="background-color:rgb(204, 204, 204); text-align:center">UITLEG</td>
						</tr>
						<tr>
							<td style="text-align:center; width:20%">Q</td>
							<td style="width:80%">Afzuiging in m3/h</td>
						</tr>
						<tr>
							<td style="text-align:center; width:20%">v</td>
							<td style="width:80%">De gemeten windsnelheid in m/s</td>
						</tr>
						<tr>
							<td style="text-align:center; width:20%">&pi;</td>
							<td style="width:80%">pi (3,14)</td>
						</tr>
						<tr>
							<td style="text-align:center; width:20%">d2</td>
							<td style="width:80%">De diameter van de slang in het kwadraat in meters. Voorbeeld bij een slang van 150mm:<br />
							150mm = 0,15 meter<br />
							0,15 x 0,15 = 0,0225</td>
						</tr>
					</tbody>
				</table>
			</td>
		</tr>
		<tr>
			<td colspan="2" valign="center" rowspan="4" style="width: 25%; font-weight: bold;">LET OP: Voor de Newcom ZB2000 nul-emissiekast moet het afzuigdebiet tussen de 1600 m3/h en 2000 m3/h liggen.</td>
			<td colspan="1" style="width: 5%; background-color:rgb(153, 153, 153);font-weight: bold;" align="center">1</td>
			<td colspan="1" style="width: 20%;" align="right">{$reportvalues.kwadrant1} m/s</td>
			<td colspan="4" style="width: 50%;" align="center" style="font-weight: bold;"><span class="smalltext">Vul hieronder het gemiddelde van de vier windsnelheden in</span></td>
		</tr>
		<tr>
			<td style="background-color:rgb(153, 153, 153);font-weight: bold;" align="center">2</td>
			<td align="right">{$reportvalues.kwadrant2} m/s</td>
			<td colspan="4" align="center" style="font-weight: bold;">{$reportvalues.gem_snelheid}</td> 
		</tr>
		<tr>
			<td style="background-color:rgb(153, 153, 153);font-weight: bold;" align="center">3</td>
			<td align="right">{$reportvalues.kwadrant3} m/s</td>
			<td colspan="4" align="center" rowspan="2" style="font-weight: bold;"><span class="smalltext">Reken dit gemiddelde om naar m3/h en vul dit hieronder in</span></td> 
		</tr>
		<tr>
			<td style="background-color:rgb(153, 153, 153);font-weight: bold;" align="center">4</td>
			<td align="right">{$reportvalues.kwadrant4} m/s</td>
		</tr>
		<tr>
			<td colspan="4">Vul hiernaast het <b>gemiddelde</b> van de vier debieten in in m<sup>3</sup>/h</td>
			<td colspan="4" align="right">{$reportvalues.gem_debiet}</td>
		</tr>
	</tbody>
</table>
<p></p>
<table border="0" cellpadding="3" cellspacing="0" class="thinborder" width="100%" style="border-collapse:collapse;">
	<tbody>
		<tr>
			<td style="width:80%">Goedkeuringsstickers aangebracht?</td>
			<td style="text-align:center; width:3%"><strong>{if $reportvalues.keurstickers == 'ja'}X{/if}</strong></td>
			<td style="text-align:center; width:7%">JA</td>
			<td style="text-align:center; width:3%"><strong>{if $reportvalues.keurstickers == 'nee'}X{/if}</strong></td>
			<td style="text-align:center; width:7%">NEE</td>
		</tr>
	</tbody>
</table>

	{if $reportvalues.mechanic_remarks != ""}
	<p><span><strong>Verrichte werkzaamheden / opmerkingen:</strong></span></p>

	<table border="0" cellpadding="3" cellspacing="0" width="100%" style="border-collapse:collapse;" class="thinborder">
		<tbody>
			<tr>
				<td>{$reportvalues.mechanic_remarks}</td>
			</tr>
		</tbody>
	</table>
	{/if}

	<p><span><strong>Gegevens keuringstechnicus en resultaat:</strong></span></p>

	<table border="0" cellpadding="3" cellspacing="0" width="100%" style="border-collapse:collapse;">
		<tbody>
			<tr>
				<td style="width:25%; border: 0.1px solid #000;">Keuringstechnicus:</td>
				<td style="width:25%; border: 0.1px solid #000;"><span>{$reportmeta.user.first_name}&nbsp;{$reportmeta.user.last_name}</span></td>
				<td style="text-align:center; width:5%; border: 0.1px solid #000;"><strong>{if $reportvalues.goed_afkeur == 'goedkeur'}X{/if}</strong></td>
				<td style="width:20%; border: 0.1px solid #000;"><strong>GOEDGEKEURD</strong></td>
				<td style="text-align:center; width:5%; border: 0.1px solid #000;"><strong>{if $reportvalues.goed_afkeur == 'afkeur'}X{/if}</strong></td>
				<td style="width:20%; border: 0.1px solid #000;"><strong>NIET GOEDGEKEURD</strong></td>
			</tr>
			<tr>
				<td style="width:25%; border: 0.1px solid #000;">Datum:</td>
				<td colspan="5" style="width:75%; border: 0.1px solid #000;">{$reportmeta.date}</td>
			</tr>
		</tbody>
	</table>{/strip}