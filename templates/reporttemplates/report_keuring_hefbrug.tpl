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
{/literal}
</style>
<div id="report_filename" style="display: none">keuring_hefbrug_{$reportmeta.accountname}_{$reportmeta.date}</div>
<table border="0" cellpadding="2" style="border-collapse:collapse;width:100%">
	<tbody>
		<tr>
			<td style="width:45%"><span style="color:#0084a7; font-size:10pt"><strong>CHECKLIJST<br />
			PERIODIEKE INSPECTIE HEFBRUGGEN<br />
			<br />
			<em>RAI Vereniging Keurmerk Hefbruggen</em></strong></span></td>
			<td style="width:35%"><span style="color:#0084a7; font-size:10pt">Checklijstvolgnummer:</span></td>
			<td style="width:10%"><img src="storage/images/logo.cbx.png" style="height:70px; width:70px" /></td>
			<td style="width:10%"><img src="storage/images/logo-rai.png" style="height:70px; width:70px" /></td>
		</tr>
	</tbody>
</table>
<table border="0" class="thinborder" cellpadding="2" style="border-collapse:collapse; width:100%">
	<tbody>
		<tr>
			<td colspan="8" style="background-color:#cccccc"><strong>Algemene gegevens</strong></td>
		</tr>
		<tr>
			<td colspan="1" style="width:20%">Naam klant/eigenaar</td>
			<td colspan="4" style="width:40%">{$reportmeta.accountname}</td>
			<td colspan="1" style="width:20%">Tel.nr:</td>
			<td colspan="2" style="width:20%">{$reportmeta.phone}</td>
		</tr>
		<tr>
			<td colspan="1" style="width:20%">Adres</td>
			<td colspan="7" style="width:80%">{$reportmeta.ship_street}</td>
		</tr>
		<tr>
			<td colspan="1" style="width:20%">Postcode</td>
			<td colspan="3" style="width:40%">{$reportmeta.ship_code}</td>
			<td colspan="1" style="width:20%">Plaats</td>
			<td colspan="3" style="width:20%">{$reportmeta.ship_city}</td>
		</tr>
		<tr>
			<td colspan="1" style="width:20%">Datum Keuring</td>
			<td colspan="3" style="width:40%">{$reportmeta.date}</td>
			<td colspan="1" style="width:20%">Keuringsnummer HBK</td>
			<td colspan="3" style="width:20%">{$reportvalues.nummer_hbk}</td>
		</tr>
		<tr>
			<td colspan="1" style="width:20%">Naam keurmeester</td>
			<td colspan="3" style="width:40%">{$reportmeta.user.first_name}&nbsp;{$reportmeta.user.last_name}</td>
			<td colspan="1" style="width:20%">Soort keuring</td>
			<td colspan="3" style="width:20%">{$reportvalues.soort_keuring}</td>
		</tr>
		<tr>
			<td colspan="1" style="background-color:#cccccc; width:20%"><strong>Identificatie Hefbrug</strong></td>
			<td colspan="1" style="width:20%">Soort Hefbrug</td>
			<td colspan="6" style="width:60%">{$reportvalues.soort_hefbrug}</td>
		</tr>
		<tr>
			<td style="width: 15%" colspan="1">Merk</td>
			<td style="width: 10%" colspan="1">{$reportmeta.cf_543}</td>
			<td style="width: 10%" colspan="1">Type / Model</td>
			<td style="width: 15%" colspan="2">{$reportmeta.productname}</td>
			<td style="width: 25%" colspan="1">Serienummer</td>
			<td style="width: 25%" colspan="2">{$reportmeta.serialnumber}</td>
		</tr>
		<tr>
			<td colspan="1">Hefvermogen</td>
			<td colspan="1">{$reportmeta.cf_905} Kg</td>
			<td colspan="1">Bouwjaar</td>
			<td colspan="2">{$reportmeta.cf_903}</td>
			<td colspan="1"></td>
			<td colspan="2"></td>
		</tr>
		<tr>
			<td colspan="7" style="background-color:#cccccc"><strong>1. Controle algemene aspecten</strong></td>
			<td colspan="1" style="background-color:#cccccc"><strong>Opmerking</strong></td>
		</tr>
		<tr>
			<td style="width: 15%;" colspan="1">1.1 + 1.2</td>
			<td style="width: 50%;" colspan="5">Typeplaat + vermelding hefvermogen</td>
			<td style="width: 20%;" colspan="1">
			<table border="0" class="thinborder" cellpadding="2" style="border-collapse:collapse; width:100%">
				<tbody>
					<tr>
						<td style="width:20%">{if $reportvalues.typeplaat == 'ja'}X{/if}</td>
						<td style="width:30%">OK</td>
						<td style="width:20%">{if $reportvalues.typeplaat == 'nee'}X{/if}</td>
						<td style="width:30%">NOK</td>
					</tr>
				</tbody>
			</table>
			</td>
			<td style="width: 15%;" colspan="1">&nbsp;</td>
		</tr>
		<tr>
			<td colspan="1">1.3 + 1.4</td>
			<td colspan="5">Gebruikersinstructie / onderhouds(log)boek aanwezig?</td>
			<td colspan="1">
			<table border="0" class="thinborder" cellpadding="2" style="border-collapse:collapse; width:100%">
				<tbody>
					<tr>
						<td style="width:20%">{if $reportvalues.gebruik_instr == 'ja'}X{/if}</td>
						<td style="width:30%">JA</td>
						<td style="width:20%">{if $reportvalues.gebruik_instr == 'nee'}X{/if}</td>
						<td style="width:30%">NEE</td>
					</tr>
				</tbody>
			</table>
			</td>
			<td colspan="1">&nbsp;</td>
		</tr>
		<tr>
			<td colspan="1">1.5</td>
			<td colspan="5">Onderhoud uitgevoerd conform de instructie van de fabrikant?</td>
			<td colspan="1">
			<table border="0" class="thinborder" cellpadding="2" style="border-collapse:collapse; width:100%">
				<tbody>
					<tr>
						<td style="width:20%">{if $reportvalues.onderh_fabrikant == 'ja'}X{/if}</td>
						<td style="width:30%">JA</td>
						<td style="width:20%">{if $reportvalues.onderh_fabrikant == 'nee'}X{/if}</td>
						<td style="width:30%">NEE</td>
					</tr>
				</tbody>
			</table>
			</td>
			<td colspan="1">&nbsp;</td>
		</tr>
		<tr>
			<td colspan="7" style="background-color:#cccccc"><strong>2. Controle algemene opstelling</strong></td>
			<td colspan="1" style="background-color:#cccccc"><strong>Opmerking</strong></td>
		</tr>
		<tr>
			<td colspan="1">2.1</td>
			<td colspan="4">Bevestiging aan de vloer</td>
			<td colspan="2">
			<table border="0" class="thinborder" cellpadding="2" style="border-collapse:collapse; width:100%">
				<tbody>
					<tr>
						<td style="width:8%">{if $reportvalues.vloer_bev == 'ja'}X{/if}</td>
						<td style="width:25%">GOED</td>
						<td style="width:8%">{if $reportvalues.vloer_bev == 'nee'}X{/if}</td>
						<td style="width:25%">FOUT</td>
						<td style="width:8%">{if $reportvalues.vloer_bev == 'nvt'}X{/if}</td>
						<td style="width:25%">NVT</td>
					</tr>
				</tbody>
			</table>
			</td>
			<td colspan="1">&nbsp;</td>
		</tr>
		<tr>
			<td colspan="1">2.2</td>
			<td colspan="5">Draagconstructie</td>
			<td colspan="1">
			<table border="0" class="thinborder" cellpadding="2" style="border-collapse:collapse; width:100%">
				<tbody>
					<tr>
						<td style="width:20%">{if $reportvalues.draagconstructie == 'ja'}X{/if}</td>
						<td style="width:30%">GOED</td>
						<td style="width:20%">{if $reportvalues.draagconstructie == 'nee'}X{/if}</td>
						<td style="width:30%">FOUT</td>
					</tr>
				</tbody>
			</table>
			</td>
			<td colspan="1">&nbsp;</td>
		</tr>
		<tr>
			<td colspan="1">2.3</td>
			<td colspan="5">Horizontaal</td>
			<td colspan="1">
			<table border="0" class="thinborder" cellpadding="2" style="border-collapse:collapse; width:100%">
				<tbody>
					<tr>
						<td style="width:20%">{if $reportvalues.horizontaal == 'ja'}X{/if}</td>
						<td style="width:30%">GOED</td>
						<td style="width:20%">{if $reportvalues.horizontaal == 'nee'}X{/if}</td>
						<td style="width:30%">FOUT</td>
					</tr>
				</tbody>
			</table>
			</td>
			<td colspan="1">&nbsp;</td>
		</tr>
		<tr>
			<td colspan="1">2.4</td>
			<td colspan="5">Functiecontrole bewegende delen</td>
			<td colspan="1">
			<table border="0" class="thinborder" cellpadding="2" style="border-collapse:collapse; width:100%">
				<tbody>
					<tr>
						<td style="width:20%">{if $reportvalues.controle_beweg_delen == 'ja'}X{/if}</td>
						<td style="width:30%">GOED</td>
						<td style="width:20%">{if $reportvalues.controle_beweg_delen == 'nee'}X{/if}</td>
						<td style="width:30%">FOUT</td>
					</tr>
				</tbody>
			</table>
			</td>
			<td colspan="1">&nbsp;</td>
		</tr>
		<tr>
			<td colspan="7" style="background-color:#cccccc"><strong>3. Algemene toestand van de aan slijtage onderhevige onderdelen</strong></td>
			<td colspan="1" style="background-color:#cccccc"><strong>Opmerking</strong></td>
		</tr>
		<tr>
			<td colspan="1">3.1 t/m 3.3</td>
			<td colspan="4">Staalkabels / hefkabels / schijven / rollenkettingen</td>
			<td colspan="2">
			<table border="0" class="thinborder" cellpadding="2" style="border-collapse:collapse; width:100%">
				<tbody>
					<tr>
						<td style="width:8%">{if $reportvalues.kabels_kettingen == 'ja'}X{/if}</td>
						<td style="width:25%">OK</td>
						<td style="width:8%">{if $reportvalues.kabels_kettingen == 'nee'}X{/if}</td>
						<td style="width:25%">NOK</td>
						<td style="width:8%">{if $reportvalues.kabels_kettingen == 'nvt'}X{/if}</td>
						<td style="width:25%">NVT</td>
					</tr>
				</tbody>
			</table>
			</td>
			<td colspan="1">&nbsp;</td>
		</tr>
		<tr>
			<td colspan="1">3.4</td>
			<td colspan="4">Hydraulische slangen en leidingen</td>
			<td colspan="2">
			<table border="0" class="thinborder" cellpadding="2" style="border-collapse:collapse; width:100%">
				<tbody>
					<tr>
						<td style="width:8%">{if $reportvalues.slangen_leidingen == 'ja'}X{/if}</td>
						<td style="width:25%">OK</td>
						<td style="width:8%">{if $reportvalues.slangen_leidingen == 'nee'}X{/if}</td>
						<td style="width:25%">NOK</td>
						<td style="width:8%">{if $reportvalues.slangen_leidingen == 'nvt'}X{/if}</td>
						<td style="width:25%">NVT</td>
					</tr>
				</tbody>
			</table>
			</td>
			<td colspan="1">&nbsp;</td>
		</tr>
		<tr>
			<td colspan="1">3.5 t/m 3.7</td>
			<td colspan="4">Draadspindels / toplagers / draagmoeren / tandwielkast</td>
			<td colspan="2">
			<table border="0" class="thinborder" cellpadding="2" style="border-collapse:collapse; width:100%">
				<tbody>
					<tr>
						<td style="width:8%">{if $reportvalues.spindels_lagers == 'ja'}X{/if}</td>
						<td style="width:25%">OK</td>
						<td style="width:8%">{if $reportvalues.spindels_lagers == 'nee'}X{/if}</td>
						<td style="width:25%">NOK</td>
						<td style="width:8%">{if $reportvalues.spindels_lagers == 'nvt'}X{/if}</td>
						<td style="width:25%">NVT</td>
					</tr>
				</tbody>
			</table>
			</td>
			<td colspan="1">&nbsp;</td>
		</tr>
		<tr>
			<td colspan="1">3.8</td>
			<td colspan="4">Synchronisatieketting</td>
			<td colspan="2">
			<table border="0" class="thinborder" cellpadding="2" style="border-collapse:collapse; width:100%">
				<tbody>
					<tr>
						<td style="width:8%">{if $reportvalues.synchr_ketting == 'ja'}X{/if}</td>
						<td style="width:25%">OK</td>
						<td style="width:8%">{if $reportvalues.synchr_ketting == 'nee'}X{/if}</td>
						<td style="width:25%">NOK</td>
						<td style="width:8%">{if $reportvalues.synchr_ketting == 'nvt'}X{/if}</td>
						<td style="width:25%">NVT</td>
					</tr>
				</tbody>
			</table>
			</td>
			<td colspan="1">&nbsp;</td>
		</tr>
		<tr>
			<td colspan="1">3.9 t/m 3.11</td>
			<td colspan="4">Aandrijfriem / -snaar / geleiderol / stempelgeleiding</td>
			<td colspan="2">
			<table border="0" class="thinborder" cellpadding="2" style="border-collapse:collapse; width:100%">
				<tbody>
					<tr>
						<td style="width:8%">{if $reportvalues.riem_snaar_rol == 'ja'}X{/if}</td>
						<td style="width:25%">OK</td>
						<td style="width:8%">{if $reportvalues.riem_snaar_rol == 'nee'}X{/if}</td>
						<td style="width:25%">NOK</td>
						<td style="width:8%">{if $reportvalues.riem_snaar_rol == 'nvt'}X{/if}</td>
						<td style="width:25%">NVT</td>
					</tr>
				</tbody>
			</table>
			</td>
			<td colspan="1">&nbsp;</td>
		</tr>
		<tr>
			<td colspan="7" style="background-color:#cccccc"><strong>4. Hydraulische cilinders + systeem</strong></td>
			<td colspan="1" style="background-color:#cccccc"><strong>Opmerking</strong></td>
		</tr>
		<tr>
			<td colspan="1">4.1 t/m 4.6</td>
			<td colspan="4">Cilinder / Overstroomverntiel / Aansluiting / Vloeistofpeil / Filter</td>
			<td colspan="2">
			<table border="0" class="thinborder" cellpadding="2" style="border-collapse:collapse; width:100%">
				<tbody>
					<tr>
						<td style="width:8%">{if $reportvalues.cilinder_ventiel == 'ja'}X{/if}</td>
						<td style="width:25%">OK</td>
						<td style="width:8%">{if $reportvalues.cilinder_ventiel == 'nee'}X{/if}</td>
						<td style="width:25%">NOK</td>
						<td style="width:8%">{if $reportvalues.cilinder_ventiel == 'nvt'}X{/if}</td>
						<td style="width:25%">NVT</td>
					</tr>
				</tbody>
			</table>
			</td>
			<td colspan="1">&nbsp;</td>
		</tr>
		<tr>
			<td colspan="7" style="background-color:#cccccc"><strong>5. Veiligheid</strong></td>
			<td colspan="1" style="background-color:#cccccc"><strong>Opmerking</strong></td>
		</tr>
		<tr>
			<td colspan="1">5.1 + 5.2</td>
			<td colspan="4">Afrijdbeveiliging en voetbeveiliging</td>
			<td colspan="2">
			<table border="0" class="thinborder" cellpadding="2" style="border-collapse:collapse; width:100%">
				<tbody>
					<tr>
						<td style="width:8%">{if $reportvalues.afrijd_voetbev == 'ja'}X{/if}</td>
						<td style="width:25%">OK</td>
						<td style="width:8%">{if $reportvalues.afrijd_voetbev == 'nee'}X{/if}</td>
						<td style="width:25%">NOK</td>
						<td style="width:8%">{if $reportvalues.afrijd_voetbev == 'nvt'}X{/if}</td>
						<td style="width:25%">NVT</td>
					</tr>
				</tbody>
			</table>
			</td>
			<td colspan="1">&nbsp;</td>
		</tr>
		<tr>
			<td colspan="1">5.3 t/m 5.5</td>
			<td colspan="4">Vergrendeling (parkeerstand)/lekkage-/valbeveiliging</td>
			<td colspan="2">
			<table border="0" class="thinborder" cellpadding="2" style="border-collapse:collapse; width:100%">
				<tbody>
					<tr>
						<td style="width:8%">{if $reportvalues.vergrend_beveil == 'ja'}X{/if}</td>
						<td style="width:25%">OK</td>
						<td style="width:8%">{if $reportvalues.vergrend_beveil == 'nee'}X{/if}</td>
						<td style="width:25%">NOK</td>
						<td style="width:8%">{if $reportvalues.vergrend_beveil == 'nvt'}X{/if}</td>
						<td style="width:25%">NVT</td>
					</tr>
				</tbody>
			</table>
			</td>
			<td colspan="1">&nbsp;</td>
		</tr>
		<tr>
			<td colspan="1">5.6</td>
			<td colspan="4">Obstakel (obstructie of slappe kabel) beveiliging</td>
			<td colspan="2">
			<table border="0" class="thinborder" cellpadding="2" style="border-collapse:collapse; width:100%">
				<tbody>
					<tr>
						<td style="width:8%">{if $reportvalues.slappe_kabel_bev == 'ja'}X{/if}</td>
						<td style="width:25%">OK</td>
						<td style="width:8%">{if $reportvalues.slappe_kabel_bev == 'nee'}X{/if}</td>
						<td style="width:25%">NOK</td>
						<td style="width:8%">{if $reportvalues.slappe_kabel_bev == 'nvt'}X{/if}</td>
						<td style="width:25%">NVT</td>
					</tr>
				</tbody>
			</table>
			</td>
			<td colspan="1">&nbsp;</td>
		</tr>
		<tr>
			<td colspan="1">5.7</td>
			<td colspan="4">Afscherming draaiende en bewegende delen</td>
			<td colspan="2">
			<table border="0" class="thinborder" cellpadding="2" style="border-collapse:collapse; width:100%">
				<tbody>
					<tr>
						<td style="width:8%">{if $reportvalues.afscherm_draai_delen == 'ja'}X{/if}</td>
						<td style="width:25%">OK</td>
						<td style="width:8%">{if $reportvalues.afscherm_draai_delen == 'nee'}X{/if}</td>
						<td style="width:25%">NOK</td>
						<td style="width:8%">{if $reportvalues.afscherm_draai_delen == 'nvt'}X{/if}</td>
						<td style="width:25%">NVT</td>
					</tr>
				</tbody>
			</table>
			</td>
			<td colspan="1">&nbsp;</td>
		</tr>
		<tr>
			<td colspan="1">5.8</td>
			<td colspan="4">Hef- en daalsnelheid</td>
			<td colspan="2">
			<table border="0" class="thinborder" cellpadding="2" style="border-collapse:collapse; width:100%">
				<tbody>
					<tr>
						<td style="width:8%">{if $reportvalues.hef_daalsnelheid == 'ja'}X{/if}</td>
						<td style="width:25%">OK</td>
						<td style="width:8%">{if $reportvalues.hef_daalsnelheid == 'nee'}X{/if}</td>
						<td style="width:25%">NOK</td>
						<td style="width:8%">{if $reportvalues.hef_daalsnelheid == 'nvt'}X{/if}</td>
						<td style="width:25%">NVT</td>
					</tr>
				</tbody>
			</table>
			</td>
			<td colspan="1">&nbsp;</td>
		</tr>
		<tr>
			<td colspan="1">5.9</td>
			<td colspan="4">Elektrische installatie</td>
			<td colspan="2">
			<table border="0" class="thinborder" cellpadding="2" style="border-collapse:collapse; width:100%">
				<tbody>
					<tr>
						<td style="width:8%">{if $reportvalues.elek_installatie == 'ja'}X{/if}</td>
						<td style="width:25%">OK</td>
						<td style="width:8%">{if $reportvalues.elek_installatie == 'nee'}X{/if}</td>
						<td style="width:25%">NOK</td>
						<td style="width:8%">{if $reportvalues.elek_installatie == 'nvt'}X{/if}</td>
						<td style="width:25%">NVT</td>
					</tr>
				</tbody>
			</table>
			</td>
			<td colspan="1">&nbsp;</td>
		</tr>
		<tr>
			<td colspan="1">5.10</td>
			<td colspan="5">Noodstopvoorziening</td>
			<td colspan="1">
			<table border="0" class="thinborder" cellpadding="2" style="border-collapse:collapse; width:100%">
				<tbody>
					<tr>
						<td style="width:20%">{if $reportvalues.noodstop == 'ja'}X{/if}</td>
						<td style="width:30%">OK</td>
						<td style="width:20%">{if $reportvalues.noodstop == 'nee'}X{/if}</td>
						<td style="width:30%">NOK</td>
					</tr>
				</tbody>
			</table>
			</td>
			<td colspan="1">&nbsp;</td>
		</tr>
		<tr>
			<td colspan="1">5.11</td>
			<td colspan="4">Werking en conditie van schakelaars</td>
			<td colspan="2">
			<table border="0" class="thinborder" cellpadding="2" style="border-collapse:collapse; width:100%">
				<tbody>
					<tr>
						<td style="width:8%">{if $reportvalues.schakelaars == 'ja'}X{/if}</td>
						<td style="width:25%">OK</td>
						<td style="width:8%">{if $reportvalues.schakelaars == 'nee'}X{/if}</td>
						<td style="width:25%">NOK</td>
						<td style="width:8%">{if $reportvalues.schakelaars == 'nvt'}X{/if}</td>
						<td style="width:25%">NVT</td>
					</tr>
				</tbody>
			</table>
			</td>
			<td colspan="1">&nbsp;</td>
		</tr>
		<tr>
			<td colspan="7" style="background-color:#cccccc"><strong>6. Schakelaars en drukknoppen</strong></td>
			<td colspan="1" style="background-color:#cccccc"><strong>Opmerking</strong></td>
		</tr>
		<tr>
			<td colspan="1">6.1</td>
			<td colspan="5">Voorkomen van onbevoegd / onbedoeld gebruik</td>
			<td colspan="1">
			<table border="0" class="thinborder" cellpadding="2" style="border-collapse:collapse; width:100%">
				<tbody>
					<tr>
						<td style="width:20%">{if $reportvalues.onbevoegd_onbedoeld == 'ja'}X{/if}</td>
						<td style="width:30%">OK</td>
						<td style="width:20%">{if $reportvalues.onbevoegd_onbedoeld == 'nee'}X{/if}</td>
						<td style="width:30%">NOK</td>
					</tr>
				</tbody>
			</table>
			</td>
			<td colspan="1">&nbsp;</td>
		</tr>
		<tr>
			<td colspan="1">6.2 t/m 6.5</td>
			<td colspan="5">Eindstandbegrenzing / bediening / markering van bediening</td>
			<td colspan="1">
			<table border="0" class="thinborder" cellpadding="2" style="border-collapse:collapse; width:100%">
				<tbody>
					<tr>
						<td style="width:20%">{if $reportvalues.eindstand == 'ja'}X{/if}</td>
						<td style="width:30%">OK</td>
						<td style="width:20%">{if $reportvalues.eindstand == 'nee'}X{/if}</td>
						<td style="width:30%">NOK</td>
					</tr>
				</tbody>
			</table>
			</td>
			<td colspan="1">&nbsp;</td>
		</tr>		
	</tbody>
</table>
<br pagebreak="true"/>
<table border="0" class="thinborder" cellpadding="2" style="border-collapse:collapse; width:100%">
	<tbody>
		<tr>
			<td colspan="7" style="width: 85%; background-color:#cccccc"><strong>7. Overige aspecten</strong></td>
			<td colspan="1" style="width: 15%; background-color:#cccccc"><strong>Opmerking</strong></td>
		</tr>
		<tr>
			<td colspan="1" style="width: 15%;">7.1</td>
			<td colspan="4" style="width: 40%;">Ge&iuml;ntegreerd wielvrijsysteem in de rijbanen</td>
			<td colspan="2" style="width: 30%;">
			<table border="0" class="thinborder" cellpadding="2" style="border-collapse:collapse; width:100%">
				<tbody>
					<tr>
						<td style="width:8%">{if $reportvalues.wielvrij_integratie == 'ja'}X{/if}</td>
						<td style="width:25%">OK</td>
						<td style="width:8%">{if $reportvalues.wielvrij_integratie == 'nee'}X{/if}</td>
						<td style="width:25%">NOK</td>
						<td style="width:8%">{if $reportvalues.wielvrij_integratie == 'nvt'}X{/if}</td>
						<td style="width:25%">NVT</td>
					</tr>
				</tbody>
			</table>
			</td>
			<td colspan="1" style="width: 15%;">&nbsp;</td>
		</tr>
		<tr>
			<td colspan="1">7.2 t/m 7.3</td>
			<td colspan="4">Vergrendelinrichting draagarmen / opnamepads</td>
			<td colspan="2">
			<table border="0" class="thinborder" cellpadding="2" style="border-collapse:collapse; width:100%">
				<tbody>
					<tr>
						<td style="width:8%">{if $reportvalues.vergr_draagarmen == 'ja'}X{/if}</td>
						<td style="width:25%">OK</td>
						<td style="width:8%">{if $reportvalues.vergr_draagarmen == 'nee'}X{/if}</td>
						<td style="width:25%">NOK</td>
						<td style="width:8%">{if $reportvalues.vergr_draagarmen == 'nvt'}X{/if}</td>
						<td style="width:25%">NVT</td>
					</tr>
				</tbody>
			</table>
			</td>
			<td colspan="1">&nbsp;</td>
		</tr>
		<tr>
			<td colspan="1">7.4</td>
			<td colspan="4">Synchronisatie / gelijkloop</td>
			<td colspan="2">
			<table border="0" class="thinborder" cellpadding="2" style="border-collapse:collapse; width:100%">
				<tbody>
					<tr>
						<td style="width:8%">{if $reportvalues.synchr_gelijkloop == 'ja'}X{/if}</td>
						<td style="width:25%">OK</td>
						<td style="width:8%">{if $reportvalues.synchr_gelijkloop == 'nee'}X{/if}</td>
						<td style="width:25%">NOK</td>
						<td style="width:8%">{if $reportvalues.synchr_gelijkloop == 'nvt'}X{/if}</td>
						<td style="width:25%">NVT</td>
					</tr>
				</tbody>
			</table>
			</td>
			<td colspan="1">&nbsp;</td>
		</tr>
		<tr>
			<td colspan="1">7.5</td>
			<td colspan="4">XY-schuifplaten, borging en antislipvoorziening</td>
			<td colspan="2">
			<table border="0" class="thinborder" cellpadding="2" style="border-collapse:collapse; width:100%">
				<tbody>
					<tr>
						<td style="width:8%">{if $reportvalues.xy_platen == 'ja'}X{/if}</td>
						<td style="width:25%">OK</td>
						<td style="width:8%">{if $reportvalues.xy_platen == 'nee'}X{/if}</td>
						<td style="width:25%">NOK</td>
						<td style="width:8%">{if $reportvalues.xy_platen == 'nvt'}X{/if}</td>
						<td style="width:25%">NVT</td>
					</tr>
				</tbody>
			</table>
			</td>
			<td colspan="1">&nbsp;</td>
		</tr>
		<tr>
			<td colspan="1">7.6</td>
			<td colspan="4">Pneumatische hefinrichting (7.6.1 t/m 7.6.8)</td>
			<td colspan="2">
			<table border="0" class="thinborder" cellpadding="2" style="border-collapse:collapse; width:100%">
				<tbody>
					<tr>
						<td style="width:8%">{if $reportvalues.pneum_hefin == 'ja'}X{/if}</td>
						<td style="width:25%">OK</td>
						<td style="width:8%">{if $reportvalues.pneum_hefin == 'nee'}X{/if}</td>
						<td style="width:25%">NOK</td>
						<td style="width:8%">{if $reportvalues.pneum_hefin == 'nvt'}X{/if}</td>
						<td style="width:25%">NVT</td>
					</tr>
				</tbody>
			</table>
			</td>
			<td colspan="1">&nbsp;</td>
		</tr>
		<tr>
			<td colspan="1">7.7</td>
			<td colspan="4">Mobiele hefkolommen / verplaatsbare hefbruggen</td>
			<td colspan="2">
			<table border="0" class="thinborder" cellpadding="2" style="border-collapse:collapse; width:100%">
				<tbody>
					<tr>
						<td style="width:8%">{if $reportvalues.mob_kolommen == 'ja'}X{/if}</td>
						<td style="width:25%">OK</td>
						<td style="width:8%">{if $reportvalues.mob_kolommen == 'nee'}X{/if}</td>
						<td style="width:25%">NOK</td>
						<td style="width:8%">{if $reportvalues.mob_kolommen == 'nvt'}X{/if}</td>
						<td style="width:25%">NVT</td>
					</tr>
				</tbody>
			</table>
			</td>
			<td colspan="1">&nbsp;</td>
		</tr>
		<tr>
			<td colspan="1">7.8</td>
			<td colspan="4">CE markering</td>
			<td colspan="2">
			<table border="0" class="thinborder" cellpadding="2" style="border-collapse:collapse; width:100%">
				<tbody>
					<tr>
						<td style="width:8%">{if $reportvalues.ce_markering == 'ja'}X{/if}</td>
						<td style="width:25%">OK</td>
						<td style="width:8%">{if $reportvalues.ce_markering == 'nee'}X{/if}</td>
						<td style="width:25%">NOK</td>
						<td style="width:8%">{if $reportvalues.ce_markering == 'nvt'}X{/if}</td>
						<td style="width:25%">NVT</td>
					</tr>
				</tbody>
			</table>
			</td>
			<td colspan="1">&nbsp;</td>
		</tr>
		{if $reportvalues.apk_keuring == 'wel_apk'}
		<tr>
			<td colspan="8" style="background-color:#cccccc"><strong>8. RDW controle aspecten APK hefbrug:</strong></td>
		</tr>
		<tr>
			<td colspan="1" rowspan="2">8.</td>
			<td colspan="4">Is het een hefbrug conform APK erkenningsinrichting?</td>
			<td colspan="1">
			<table border="0" class="thinborder" cellpadding="2" style="border-collapse:collapse; width:100%">
				<tbody>
					<tr>
						<td style="width:20%">{if $reportvalues.conform_apk == 'ja'}X{/if}</td>
						<td style="width:30%">JA</td>
						<td style="width:20%">{if $reportvalues.conform_apk == 'nee'}X{/if}</td>
						<td style="width:30%">NVT</td>
					</tr>
				</tbody>
			</table>
			</td>
			<td colspan="1" style="background-color:#cccccc"><strong>RDW KI-nummer</strong></td>
			<td colspan="1">{$reportmeta.cf_548}</td>
		</tr>
		<tr>
			<td colspan="5">De hefinrichting ondersteunt tenminste vier wielen van een voertuig</td>
			<td colspan="1">
			<table border="0" class="thinborder" cellpadding="2" style="border-collapse:collapse; width:100%">
				<tbody>
					<tr>
						<td style="width:20%">{if $reportvalues.vier_wielen == 'ja'}X{/if}</td>
						<td style="width:30%">JA</td>
						<td style="width:20%">{if $reportvalues.vier_wielen == 'nee'}X{/if}</td>
						<td style="width:30%">NEE</td>
					</tr>
				</tbody>
			</table>
			</td>
			<td colspan="1">&nbsp;</td>
		</tr>
		<tr>
			<td colspan="1">8.1</td>
			<td colspan="5">Voldoende vrije ruimte rondom de hefbrug</td>
			<td colspan="1">
			<table border="0" class="thinborder" cellpadding="2" style="border-collapse:collapse; width:100%">
				<tbody>
					<tr>
						<td style="width:20%">{if $reportvalues.vrije_ruimte == 'ja'}X{/if}</td>
						<td style="width:30%">JA</td>
						<td style="width:20%">{if $reportvalues.vrije_ruimte == 'nee'}X{/if}</td>
						<td style="width:30%">NEE</td>
					</tr>
				</tbody>
			</table>
			</td>
			<td colspan="1">&nbsp;</td>
		</tr>
		<tr>
			<td colspan="1">8.2</td>
			<td colspan="5">Verlichtingsarmaturen niet beschadigd / voorzien van beschermkappen</td>
			<td colspan="1">
			<table border="0" class="thinborder" cellpadding="2" style="border-collapse:collapse; width:100%">
				<tbody>
					<tr>
						<td style="width:20%">{if $reportvalues.verlicht_besch == 'ja'}X{/if}</td>
						<td style="width:30%">JA</td>
						<td style="width:20%">{if $reportvalues.verlicht_besch == 'nee'}X{/if}</td>
						<td style="width:30%">NEE</td>
					</tr>
				</tbody>
			</table>
			</td>
			<td colspan="1">&nbsp;</td>
		</tr>
		<tr>
			<td colspan="1">8.2</td>
			<td colspan="5">Is de gemiddelde lichtopbrengst onder de hefbrug &ge; 200 lux</td>
			<td colspan="1">
			<table border="0" class="thinborder" cellpadding="2" style="border-collapse:collapse; width:100%">
				<tbody>
					<tr>
						<td style="width:20%">{if $reportvalues.lichtopbrengst == 'ja'}X{/if}</td>
						<td style="width:30%">JA</td>
						<td style="width:20%">{if $reportvalues.lichtopbrengst == 'nee'}X{/if}</td>
						<td style="width:30%">NEE</td>
					</tr>
				</tbody>
			</table>
			</td>
			<td colspan="1">&nbsp;</td>
		</tr>
		<tr>
			<td colspan="1">8.3</td>
			<td colspan="5">Wordt de minimaal voorgeschreven hefhoogte gehaald?</td>
			<td colspan="1">
			<table border="0" class="thinborder" cellpadding="2" style="border-collapse:collapse; width:100%">
				<tbody>
					<tr>
						<td style="width:20%">{if $reportvalues.voorgeschr_hefhoogte == 'ja'}X{/if}</td>
						<td style="width:30%">JA</td>
						<td style="width:20%">{if $reportvalues.voorgeschr_hefhoogte == 'nee'}X{/if}</td>
						<td style="width:30%">NEE</td>
					</tr>
				</tbody>
			</table>
			</td>
			<td colspan="1">&nbsp;</td>
		</tr>
		{/if}
		<tr>
			<td colspan="8" style="background-color:#cccccc"><strong>Opmerkingen en/of reparatieadvies</strong></td>
		</tr>
		<tr>
			<td colspan="8">{$reportvalues.mechanic_remarks}</td>
		</tr>
	</tbody>
</table>

<table border="0" cellpadding="3" class="thinborder" style="border-collapse:collapse;">
	<tbody>
		<tr>
			<td style="width:80%">
				<span>Deze hefbrug / hefinrichting is gekeurd en voldoet</span>
				<span><strong>&nbsp;{if $reportvalues.goed_afkeur == 'goedkeur' || $reportvalues.goed_afkeur == 'goed_na_rep'}wel{elseif $reportvalues.goed_afkeur == 'afkeur' || $reportvalues.goed_afkeur == 'tijdelijk'}niet{/if}&nbsp;</strong></span>
				<span>aan alle relevante eisen</span>
			</td>
			<td style="width:20%">Eindtijd keuring:&nbsp;{$reportvalues.eindtijd}&nbsp;uur</td>
		</tr>
		<tr>
			<td style="width:80%">
			<table border="0" style="border-collapse:collapse; width:100%">
				<tbody>
					<tr>
						<td style="width:30%">{if $reportvalues.goed_afkeur == 'tijdelijk'}X{/if}</td>
						<td style="width:70%"><strong>Deze hefbrug / hefinrichting krijgt een <u>&eacute;&eacute;nmalige</u> tijdelijke goedkeuring in verband met een aanpassing (maximaal drie maanden)</strong></td>
					</tr>
				</tbody>
			</table>
			</td>
			<td style="width:20%">Keuring verloopt op<br />{$reportvalues.verloopdatum}</td>
		</tr>
		<tr>
			<td colspan="2" style="height:60px">
			<table border="0" style="border-collapse:collapse; width:100%">
				<tbody>
					<tr>
						<td style="width:10%">&nbsp;</td>
						<td style="width:90%">Voordat deze hefbrug mag worden goedgekeurd en gebruikt, zal de volgende reparatie / aanpasssing dienen te worden uitgevoerd.</td>
					</tr>
				</tbody>
			</table>
			</td>
		</tr>
		<tr>
			<td style="width:80%"><strong>Is er sprake van een goedkeur na reparatie?</strong></td>
			<td style="width:20%">
			<table border="0" style="border-collapse:collapse; width:100%">
				<tbody>
					<tr>
						<td style="width:20%">{if $reportvalues.goed_afkeur == 'goed_na_rep'}X{/if}</td>
						<td style="width:30%">JA</td>
						<td style="width:20%">{if $reportvalues.goed_afkeur != 'goed_na_rep'}X{/if}</td>
						<td style="width:30%">NEE</td>
					</tr>
				</tbody>
			</table>
			</td>
		</tr>
	</tbody>
</table>
{*
<table border="1" cellpadding="3" style="border-collapse:collapse; font-family:arial,verdana,sans-serif; font-size:8pt; margin-top:10px; width:100%">
	<tbody>
		<tr>
			<td style="width:50%">Voor gezien (klant):<br />
			<br />
			<br />
			<br />
			Naam contactpersoon:</td>
			<td style="width:50%">Handtekening keurmeester:</td>
		</tr>
	</tbody>
</table>

<table border="1" cellpadding="3" style="border-collapse:collapse; font-family:arial,verdana,sans-serif; font-size:8pt; margin-top:10px; width:100%">
	<tbody>
		<tr>
			<td style="width:100%">De geldigheid van deze keuring komt met onmiddelijke ingang te vervallen indien een aan de grond verankerde hefbrug verplaatst wordt of als de hefbrug blootgesteld is aan extreme hitte als gevolg van een brand (van korte duur) in de directe omgeving van de hefbrug.</td>
		</tr>
	</tbody>
</table>
*}
{/strip}