<table border="1" cellpadding="1" cellspacing="1" style="border-collapse:collapse; font-family:arial,helvetica,sans-serif; width:100%">
		<tbody>
			<tr>
				<td style="background-color:rgb(204, 204, 204); text-align:center">REGISTRATIE FORMULIER CRF-1 VOOR GEBRUIK BIJ HERKEURING PLATENREMTESTBANKEN</td>
			</tr>
		</tbody>
	</table>

	<table border="0" cellpadding="1" cellspacing="1" style="border-collapse:collapse; font-family:arial,helvetica,sans-serif; font-size:11px; margin-top:15px; width:100%">
		<tbody>
			<tr>
				<td style="width:30%"><img alt="" src="storage/images/Logo_CBX_zwart_wit.png" style="float:left; height:65px; margin-right:20px; width:65px" />
				<p>{$reportmeta.company.address}, {$reportmeta.company.code}, {$reportmeta.company.city}</p>

				<p>{$reportmeta.company.website}</p>

				<p>Tel. {$reportmeta.company.phone}</p>
				</td>
				<td style="width:60%">
				<table align="right" border="1" cellpadding="5" cellspacing="1" style="border-collapse:collapse; font-family:arial,helvetica,sans-serif; width:100%">
					<tbody>
						<tr>
							<td colspan="4" style="background-color:rgb(153, 153, 153); text-align:center"><span style="font-size:12px"><strong>KLANT / REMMENBANK GEGEVENS</strong></span></td>
						</tr>
						<tr>
							<td style="background-color:rgb(204, 204, 204); text-align:right; width:20%"><span style="font-size:9px">Bedrijfsnaam</span></td>
							<td style="width:30%"><span style="font-size:11px">{$reportmeta.accountname}</span></td>
							<td style="background-color:rgb(204, 204, 204); text-align:right; width:20%"><span style="font-size:9px">Merk meetmiddel</span></td>
							<td style="width:30%"><span style="font-size:11px">{$reportmeta.cf_543}</span></td>
						</tr>
						<tr>
							<td style="background-color:rgb(204, 204, 204); text-align:right; width:20%"><span style="font-size:9px">Adres</span></td>
							<td style="width:30%"><span style="font-size:11px">{$reportmeta.ship_street}</span></td>
							<td style="background-color:rgb(204, 204, 204); text-align:right; width:20%"><span style="font-size:9px">Type meetmiddel</span></td>
							<td style="width:30%"><span style="font-size:11px">{$reportmeta.productname}</span></td>
						</tr>
						<tr>
							<td style="background-color:rgb(204, 204, 204); text-align:right; width:20%"><span style="font-size:9px">PC / Plaats</span></td>
							<td style="width:30%"><span style="font-size:11px">{$reportmeta.ship_code}&nbsp;{$reportmeta.ship_city}</span></td>
							<td style="background-color:rgb(204, 204, 204); text-align:right; width:20%"><span style="font-size:9px">Serienummer</span></td>
							<td style="width:30%"><span style="font-size:11px">{$reportmeta.serialnumber}</span></td>
						</tr>
						<tr>
							<td style="background-color:rgb(204, 204, 204); text-align:right; width:20%"><span style="font-size:9px">KI Nummer</span></td>
							<td style="width:30%"><span style="font-size:11px">{$reportmeta.cf_548}</span></td>
							<td style="background-color:rgb(204, 204, 204); text-align:right; width:20%"><span style="font-size:9px">Verloopdatum</span></td>
							<td style="width:30%"><span style="font-size:11px">{$reportmeta.cf_731}</span></td>
						</tr>
					</tbody>
				</table>
				</td>
			</tr>
		</tbody>
	</table>

	<table border="1" cellpadding="2" cellspacing="1" style="border-collapse:collapse; font-family:arial,helvetica,sans-serif; font-size:10px; margin-top:15px; width:100%">
		<tbody>
			<tr>
				<td style="background-color:rgb(204, 204, 204); width:60%"><span style="font-size:11px"><strong>Controles aan de uitleesconsole en vloerdelen</strong></span></td>
				<td style="background-color:rgb(204, 204, 204); width:10%"><span style="font-size:8px">Ja / Goed</span></td>
				<td style="background-color:rgb(204, 204, 204); width:10%"><span style="font-size:8px">Goed na reparatie of onderzoek</span></td>
				<td style="background-color:rgb(204, 204, 204); width:10%"><span style="font-size:8px">Nee / fout</span></td>
				<td style="background-color:rgb(204, 204, 204); width:10%"><span style="font-size:8px">N.V.T.</span></td>
			</tr>
			<tr>
				<td style="height:30px; width:60%">Voldoet de typesticker aan alle opschriften?</td>
				<td style="text-align:center; width:10%"><strong>{if $reportvalues.sticker_controle == 'ja'}X{/if}</strong></td>
				<td style="text-align:center; width:10%"><strong>{if $reportvalues.sticker_controle == 'na_reparatie'}X{/if}</strong></td>
				<td style="text-align:center; width:10%"><strong>{if $reportvalues.sticker_controle == 'nee'}X{/if}</strong></td>
				<td style="text-align:center; width:10%"><strong>{if $reportvalues.sticker_controle == 'nvt'}X{/if}</strong></td>
			</tr>
			<tr>
				<td style="height:30px; width:60%">Is het certificaat van eerste keuring aanwezig, en wordt hierop het juiste serienummer vermeld?</td>
				<td style="text-align:center; width:10%"><strong>{if $reportvalues.certificaat_controle == 'ja'}X{/if}</strong></td>
				<td style="text-align:center; width:10%"><strong>{if $reportvalues.certificaat_controle == 'na_reparatie'}X{/if}</strong></td>
				<td style="text-align:center; width:10%"><strong>{if $reportvalues.certificaat_controle == 'nee'}X{/if}</strong></td>
				<td style="text-align:center; width:10%"><strong>{if $reportvalues.certificaat_controle == 'nvt'}X{/if}</strong></td>
			</tr>
			<tr>
				<td style="height:30px; width:60%">Is de originele Nederlandse handleiding aanwezig?</td>
				<td style="text-align:center; width:10%"><strong>{if $reportvalues.handleiding_controle == 'ja'}X{/if}</strong></td>
				<td style="text-align:center; width:10%"><strong>{if $reportvalues.handleiding_controle == 'na_reparatie'}X{/if}</strong></td>
				<td style="text-align:center; width:10%"><strong>{if $reportvalues.handleiding_controle == 'nee'}X{/if}</strong></td>
				<td style="text-align:center; width:10%"><strong>{if $reportvalues.handleiding_controle == 'nvt'}X{/if}</strong></td>
			</tr>
			<tr>
				<td style="height:30px; width:60%">Zijn er geen beschadigingen of wijzigingen aanwezig?</td>
				<td style="text-align:center; width:10%"><strong>{if $reportvalues.beschadiging_controle == 'ja'}X{/if}</strong></td>
				<td style="text-align:center; width:10%"><strong>{if $reportvalues.beschadiging_controle == 'na_reparatie'}X{/if}</strong></td>
				<td style="text-align:center; width:10%"><strong>{if $reportvalues.beschadiging_controle == 'nee'}X{/if}</strong></td>
				<td style="text-align:center; width:10%"><strong>{if $reportvalues.beschadiging_controle == 'nvt'}X{/if}</strong></td>
			</tr>
			<tr>
				<td style="height:30px; width:60%">Is de conformiteit van de <strong>aanwijsinrichting</strong> gewaarborgd door een verzegelingssticker?</td>
				<td style="text-align:center; width:10%"><strong>{if $reportvalues.verzegeling_controle == 'ja'}X{/if}</strong></td>
				<td style="text-align:center; width:10%"><strong>{if $reportvalues.verzegeling_controle == 'na_reparatie'}X{/if}</strong></td>
				<td style="text-align:center; width:10%"><strong>{if $reportvalues.verzegeling_controle == 'nee'}X{/if}</strong></td>
				<td style="text-align:center; width:10%"><strong>{if $reportvalues.verzegeling_controle == 'nvt'}X{/if}</strong></td>
			</tr>
			<tr>
				<td style="height:30px; width:60%">Is de aanwijsinrichting gecontroleerd op duidelijke aanwijzing? (LED&#39;s)</td>
				<td style="text-align:center; width:10%"><strong>{if $reportvalues.led_controle == 'ja'}X{/if}</strong></td>
				<td style="text-align:center; width:10%"><strong>{if $reportvalues.led_controle == 'na_reparatie'}X{/if}</strong></td>
				<td style="text-align:center; width:10%"><strong>{if $reportvalues.led_controle == 'nee'}X{/if}</strong></td>
				<td style="text-align:center; width:10%"><strong>{if $reportvalues.led_controle == 'nvt'}X{/if}</strong></td>
			</tr>
			<tr>
				<td style="height:30px; width:60%">Is de voedingsspanning gecontroleerd?</td>
				<td style="text-align:center; width:10%"><strong>{if $reportvalues.voeding_controle == 'ja'}X{/if}</strong></td>
				<td style="text-align:center; width:10%"><strong>{if $reportvalues.voeding_controle == 'na_reparatie'}X{/if}</strong></td>
				<td style="text-align:center; width:10%"><strong>{if $reportvalues.voeding_controle == 'nee'}X{/if}</strong></td>
				<td style="text-align:center; width:10%"><strong>{if $reportvalues.voeding_controle == 'nvt'}X{/if}</strong></td>
			</tr>
			<tr>
				<td style="height:30px; width:60%">Is de conformiteit van de <strong>vloerdelen</strong> gewaarborgd door een verzegelingssticker? (Indien eerste keuring na 1-1-2012 heeft plaatsgevonden)</td>
				<td style="text-align:center; width:10%"><strong>{if $reportvalues.vloerdelen_controle == 'ja'}X{/if}</strong></td>
				<td style="text-align:center; width:10%"><strong>{if $reportvalues.vloerdelen_controle == 'na_reparatie'}X{/if}</strong></td>
				<td style="text-align:center; width:10%"><strong>{if $reportvalues.vloerdelen_controle == 'nee'}X{/if}</strong></td>
				<td style="text-align:center; width:10%"><strong>{if $reportvalues.vloerdelen_controle == 'nvt'}X{/if}</strong></td>
			</tr>
		</tbody>
	</table>

	<table border="1" cellpadding="4" cellspacing="1" style="border-collapse:collapse; font-family:arial,helvetica,sans-serif; font-size:11px; margin-top:15px; width:100%">
		<tbody>
			<tr>
				<td colspan="7" style="background-color:rgb(204, 204, 204); text-align:center"><strong>Controle van de volgende kalibratiepunten</strong></td>
			</tr>
			<tr>
				<td rowspan="2" style="background-color:rgb(204, 204, 204); text-align:center; width:10%">
				<p style="text-align:center"><span style="font-size:8px">Belasting<br />
				(N)</span></p>
				</td>
				<td colspan="3" style="background-color:rgb(51, 51, 51); text-align:center; width:15%"><span style="color:rgb(255, 255, 255)"><strong>Vooras</strong></span></td>
				<td colspan="3" style="background-color:rgb(51, 51, 51); text-align:center; width:15%"><span style="color:rgb(255, 255, 255)"><strong>Achteras</strong></span></td>
			</tr>
			<tr>
				<td style="background-color:rgb(204, 204, 204); width:15%">
				<p><span style="font-size:8px">Aanduiding linksvoor (N)</span></p>

				<p>&nbsp;</p>

				<p><span style="font-size:8px">offset ( &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;)</span></p>
				</td>
				<td style="background-color:rgb(204, 204, 204); text-align:center; width:10%">L/R</td>
				<td style="background-color:rgb(204, 204, 204); width:15%">
				<p style="text-align:center"><span style="font-size:8px">Aanduiding rechtsvoor (N)</span></p>

				<p>&nbsp;</p>

				<p><span style="font-size:8px">offset ( &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;)</span></p>
				</td>
				<td style="background-color:rgb(204, 204, 204); width:15%">
				<p><span style="font-size:8px">Aanduiding linksachter (N)</span></p>

				<p>&nbsp;</p>

				<p><span style="font-size:8px">offset ( &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;)</span></p>
				</td>
				<td style="background-color:rgb(204, 204, 204); text-align:center; width:10%">L/R</td>
				<td style="background-color:rgb(204, 204, 204); width:15%">
				<p style="text-align:center"><span style="font-size:8px">Aanduiding rechtsachter (N)</span></p>

				<p style="text-align:center">&nbsp;</p>

				<p><span style="font-size:8px">offset ( &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;)</span></p>
				</td>
			</tr>
			<tr>
				<td style="background-color:rgb(204, 204, 204); height:30px; text-align:center; width:10%">1000</td>
				<td style="text-align:center; width:15%"><strong>{$reportvalues.lv_1000N}</strong></td>
				<td style="text-align:right; width:10%"><strong>N</strong></td>
				<td style="text-align:center; width:15%"><strong>{$reportvalues.rv_1000N}</strong></td>
				<td style="text-align:center; width:15%"><strong>{$reportvalues.la_1000N}</strong></td>
				<td style="text-align:right; width:10%"><strong>N</strong></td>
				<td style="text-align:center; width:15%"><strong>{$reportvalues.ra_1000N}</strong></td>
			</tr>
			<tr>
				<td style="background-color:rgb(204, 204, 204); height:30px; text-align:center; width:10%">3000</td>
				<td style="text-align:center; width:15%"><strong>{$reportvalues.lv_3000N}</strong></td>
				<td style="text-align:right; width:10%"><strong>N</strong></td>
				<td style="text-align:center; width:15%"><strong>{$reportvalues.rv_3000N}</strong></td>
				<td style="text-align:center; width:15%"><strong>{$reportvalues.la_3000N}</strong></td>
				<td style="text-align:right; width:10%"><strong>N</strong></td>
				<td style="text-align:center; width:15%"><strong>{$reportvalues.ra_3000N}</strong></td>
			</tr>
			<tr>
				<td style="background-color:rgb(204, 204, 204); height:30px; text-align:center; width:10%">5000</td>
				<td style="text-align:center; width:15%"><strong>{$reportvalues.lv_5000N}</strong></td>
				<td style="text-align:right; width:10%"><strong>N</strong></td>
				<td style="text-align:center; width:15%"><strong>{$reportvalues.rv_5000N}</strong></td>
				<td style="text-align:center; width:15%"><strong>{$reportvalues.la_5000N}</strong></td>
				<td style="text-align:right; width:10%"><strong>N</strong></td>
				<td style="text-align:center; width:15%"><strong>{$reportvalues.ra_5000N}</strong></td>
			</tr>
			<tr>
				<td style="background-color:rgb(204, 204, 204); height:30px; text-align:center; width:10%">7000</td>
				<td style="text-align:center; width:15%"><strong>{$reportvalues.lv_7000N}</strong></td>
				<td style="text-align:right; width:10%"><strong>N</strong></td>
				<td style="text-align:center; width:15%"><strong>{$reportvalues.rv_7000N}</strong></td>
				<td style="text-align:center; width:15%"><strong>{$reportvalues.la_7000N}</strong></td>
				<td style="text-align:right; width:10%"><strong>N</strong></td>
				<td style="text-align:center; width:15%"><strong>{$reportvalues.ra_7000N}</strong></td>
			</tr>
			<tr>
				<td style="background-color:rgb(204, 204, 204); height:30px; text-align:center; width:10%">10000</td>
				<td style="text-align:center; width:15%"><strong>{$reportvalues.lv_10000N}</strong></td>
				<td style="text-align:right; width:10%"><strong>N</strong></td>
				<td style="text-align:center; width:15%"><strong>{$reportvalues.rv_10000N}</strong></td>
				<td style="text-align:center; width:15%"><strong>{$reportvalues.la_10000N}</strong></td>
				<td style="text-align:right; width:10%"><strong>N</strong></td>
				<td style="text-align:center; width:15%"><strong>{$reportvalues.ra_10000N}</strong></td>
			</tr>
			<tr>
				<td colspan="7" style="width:10%">Maximaal toegestande afwijking: bij 1.000N = 180N, bij 2.000 t/m 10.000N = 10% of 4%. Verschil tussen links en rechts maximaal 5% of 2%.</td>
			</tr>
		</tbody>
	</table>

	<p><span style="font-family:arial,helvetica,sans-serif; font-size:12px"><strong>Verrichte werkzaamheden / opmerkingen:</strong></span></p>

	<table border="1" cellpadding="1" cellspacing="1" style="border-collapse:collapse; font-family:arial,helvetica,sans-serif; font-size:10px; width:100%">
		<tbody>
			<tr>
				<td>{$reportvalues.mechanic_remarks}</td>
			</tr>
		</tbody>
	</table>

	<p><span style="font-family:arial,helvetica,sans-serif; font-size:12px"><strong>Gegevens keuringstechnicus en resultaat:</strong></span></p>

	<table border="1" cellpadding="5" cellspacing="1" style="border-collapse:collapse; font-family:arial,helvetica,sans-serif; font-size:10px; margin-top:15px; width:100%">
		<tbody>
			<tr>
				<td style="width:25%">Keuringstechnicus:</td>
				<td style="width:25%"><span style="font-family:arial,helvetica,sans-serif; font-size:10px">{$reportmeta.user.first_name}&nbsp;{$reportmeta.user.last_name}</span></td>
				<td style="text-align:center; width:5%"><strong>{if $reportvalues.goed_afkeur == 'goedkeur'}X{/if}</strong></td>
				<td style="width:20%"><strong>GOEDGEKEURD</strong></td>
				<td style="text-align:center; width:5%"><strong>{if $reportvalues.goed_afkeur == 'afkeur'}X{/if}</strong></td>
				<td style="width:20%"><strong>NIET GOEDGEKEURD</strong></td>
			</tr>
			<tr>
				<td style="width:25%">Datum:</td>
				<td colspan="5" style="width:75%">{$reportmeta.date}</td>
			</tr>
		</tbody>
	</table>