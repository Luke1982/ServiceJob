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
<div id="report_filename" style="display: none">checklist_balanceermachine_{$reportmeta.accountname}_{$reportmeta.date}</div>
<table border="0" cellpadding="1" cellspacing="0" width="100%">
	<tbody>
		<tr>
			<td style="background-color:rgb(204, 204, 204); text-align:center; border: 0.1px solid #000;">CHECKLIST PERIODIEKE CONTROLE AAN BALANCEER MACHINES</td>
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
						<td colspan="4" style="background-color:rgb(153, 153, 153); text-align:center; border: 0.1px solid #000;"><span><strong>KLANT / APPARAAT GEGEVENS</strong></span></td>
					</tr>
					<tr>
						<td style="background-color:rgb(204, 204, 204); text-align:right; width:20%;"><span class="smalltext">Bedrijfsnaam</span></td>
						<td style="width:30%; text-align:left;"><span>{$reportmeta.accountname}</span></td>
						<td style="background-color:rgb(204, 204, 204); text-align:right; width:20%;"><span class="smalltext">Merk apparaat</span></td>
						<td style="width:30%; text-align:left; border: 0.1px solid #000;"><span>{$reportmeta.cf_543}</span></td>
					</tr>
					<tr>
						<td style="background-color:rgb(204, 204, 204); text-align:right; width:20%;"><span class="smalltext">Adres</span></td>
						<td style="width:30%; text-align:left;"><span>{$reportmeta.ship_street}</span></td>
						<td style="background-color:rgb(204, 204, 204); text-align:right; width:20%;"><span class="smalltext">Type apparaat</span></td>
						<td style="width:30%; text-align:left;"><span>{$reportmeta.productname}</span></td>
					</tr>
					<tr>
						<td style="background-color:rgb(204, 204, 204); text-align:right; width:20%;"><span class="smalltext">PC / Plaats</span></td>
						<td style="width:30%; text-align:left;"><span>{$reportmeta.ship_code}&nbsp;{$reportmeta.ship_city}</span></td>
						<td style="background-color:rgb(204, 204, 204); text-align:right; width:20%;"><span class="smalltext">Serienummer</span></td>
						<td style="width:30%; text-align:left;"><span>{$reportmeta.serialnumber}</span></td>
					</tr>
				</tbody>
			</table>
			</td>
		</tr>
	</tbody>
</table>
<p></p>
<table border="0" cellpadding="3" cellspacing="0" style="border-collapse:collapse;" class="thinborder">
	<tbody>
		<tr>
			<td style="background-color:rgb(204, 204, 204); width:100%" colspan="2"><span><strong>Controlepunten</strong></span></td>
		</tr>
		<tr>
			<td style=" width:60%">Zijn alle opschriften op het typeplaatje aanwezig en kloppen ze?</td>
			<td style="width:40%">
				<strong>
				{if $reportvalues.sticker_controle == 'ja'}
					Ja
				{elseif $reportvalues.sticker_controle == 'na_reparatie'}
					Ja, na reparatie
				{elseif $reportvalues.sticker_controle == 'nee'}
					Nee
				{/if}
				</strong>
				{if $reportvalues.sticker_controle_opmerking != ''}
				<br>Opmerking van de technicus:&nbsp;<i>{$reportvalues.sticker_controle_opmerking}</i>
				{/if}
			</td>
		</tr>
		<tr>
			<td style=" width:60%">Bevestiging aan de vloer OK?</td>
			<td style="width:40%">
				<strong>
				{if $reportvalues.montage_controle == 'ja'}
					Ja
				{elseif $reportvalues.montage_controle == 'na_reparatie'}
					Ja, na reparatie
				{elseif $reportvalues.montage_controle == 'nee'}
					Nee
				{/if}
				</strong>
				{if $reportvalues.montage_controle_opmerking != ''}
				<br>Opmerking van de technicus:&nbsp;<i>{$reportvalues.montage_controle_opmerking}</i>
				{/if}
			</td>
		</tr>
		<tr>
			<td style=" width:60%">Speling op de balanceeras?</td>
			<td style="width:40%">
				<strong>
				{if $reportvalues.speling_balanceeras == 'ja'}
					Ja
				{elseif $reportvalues.speling_balanceeras == 'na_reparatie'}
					Ja, na reparatie
				{elseif $reportvalues.speling_balanceeras == 'nee'}
					Nee
				{/if}
				</strong>
				{if $reportvalues.speling_balanceeras_opmerking != ''}
				<br>Opmerking van de technicus:&nbsp;<i>{$reportvalues.speling_balanceeras_opmerking}</i>
				{/if}
			</td>
		</tr>
		<tr>
			<td style=" width:60%">Opspanas in goede conditie?</td>
			<td style="width:40%">
				<strong>
				{if $reportvalues.opspanas_conditie == 'ja'}
					Ja
				{elseif $reportvalues.opspanas_conditie == 'na_reparatie'}
					Ja, na reparatie
				{elseif $reportvalues.opspanas_conditie == 'nee'}
					Nee
				{/if}
				</strong>
				{if $reportvalues.opspanas_conditie_opmerking != ''}
				<br>Opmerking van de technicus:&nbsp;<i>{$reportvalues.opspanas_conditie_opmerking}</i>
				{/if}
			</td>
		</tr>
		<tr>
			<td style=" width:60%">Werking opspanning (snelspanner/automatische opspanning)?</td>
			<td style="width:40%">
				<strong>
				{if $reportvalues.werking_opspanning == 'goed'}
					Goed
				{elseif $reportvalues.werking_opspanning == 'niet_goed'}
					Niet goed
				{/if}
				</strong>
				{if $reportvalues.werking_opspanning_opmerking != ''}
				<br>Opmerking van de technicus:&nbsp;<i>{$reportvalues.werking_opspanning_opmerking}</i>
				{/if}
			</td>
		</tr>
		<tr>
			<td style=" width:60%">Bedieningsknoppen en display in goede conditie?</td>
			<td style="width:40%">
				<strong>
				{if $reportvalues.knoppen_display == 'ja'}
					Ja
				{elseif $reportvalues.knoppen_display == 'nee'}
					Nee
				{/if}
				</strong>
				{if $reportvalues.knoppen_display_opmerking != ''}
				<br>Opmerking van de technicus:&nbsp;<i>{$reportvalues.knoppen_display_opmerking}</i>
				{/if}
			</td>
		</tr>
		<tr>
			<td style=" width:60%">Werking start cyclus (met kap/zonder kap):</td>
			<td style="width:40%">
				<strong>
				{if $reportvalues.start_cyclus == 'goed'}
					Goed
				{elseif $reportvalues.start_cyclus == 'niet_goed'}
					Niet goed
				{/if}
				</strong>
				{if $reportvalues.start_cyclus_opmerking != ''}
				<br>Opmerking van de technicus:&nbsp;<i>{$reportvalues.start_cyclus_opmerking}</i>
				{/if}
			</td>
		</tr>
		<tr>
			<td style=" width:60%">Werking motorschakeling?</td>
			<td style="width:40%">
				<strong>
				{if $reportvalues.motorschakeling == 'goed'}
					Goed
				{elseif $reportvalues.motorschakeling == 'niet_goed'}
					Niet goed
				{/if}
				</strong>
				{if $reportvalues.motorschakeling_opmerking != ''}
				<br>Opmerking van de technicus:&nbsp;<i>{$reportvalues.motorschakeling_opmerking}</i>
				{/if}
			</td>
		</tr>
		<tr>
			<td style=" width:60%">Werking blokkeerinrichting balanceeras:</td>
			<td style="width:40%">
				<strong>
				{if $reportvalues.blokkeerinrichting == 'goed'}
					Goed
				{elseif $reportvalues.blokkeerinrichting == 'niet_goed'}
					Niet goed
				{elseif $reportvalues.blokkeerinrichting == 'nvt'}
					Niet van toepassing
				{/if}
				</strong>
				{if $reportvalues.blokkeerinrichting_opmerking != ''}
				<br>Opmerking van de technicus:&nbsp;<i>{$reportvalues.blokkeerinrichting_opmerking}</i>
				{/if}
			</td>
		</tr>
		<tr>
			<td style=" width:60%">Controle as-kalibratie (wielverdraaiing):</td>
			<td style="width:40%">
				<strong>
				{if $reportvalues.kalibratie_draaiing == 'goed'}
					Goed
				{elseif $reportvalues.kalibratie_draaiing == 'niet_goed'}
					Niet goed
				{elseif $reportvalues.kalibratie_draaiing == 'gekalibreerd'}
					Gekalibreerd
				{/if}
				</strong>
				{if $reportvalues.kalibratie_draaiing_opmerking != ''}
				<br>Opmerking van de technicus:&nbsp;<i>{$reportvalues.kalibratie_draaiing_opmerking}</i>
				{/if}
			</td>
		</tr>
		<tr>
			<td style=" width:60%">Controle gewichtskalibratie (gewichtscontrole):</td>
			<td style="width:40%">
				<strong>
				{if $reportvalues.kalibratie_gewicht == 'goed'}
					Goed
				{elseif $reportvalues.kalibratie_gewicht == 'niet_goed'}
					Niet goed
				{elseif $reportvalues.kalibratie_gewicht == 'gekalibreerd'}
					Gekalibreerd
				{/if}
				</strong>
				{if $reportvalues.kalibratie_gewicht_opmerking != ''}
				<br>Opmerking van de technicus:&nbsp;<i>{$reportvalues.kalibratie_gewicht_opmerking}</i>
				{/if}
			</td>
		</tr>
		<tr>
			<td style=" width:60%">Positie gevraagd onbalans (omwentelsensor):</td>
			<td style="width:40%">
				<strong>
				{if $reportvalues.omwentelsensor == 'goed'}
					Goed
				{elseif $reportvalues.omwentelsensor == 'niet_goed'}
					Niet goed
				{elseif $reportvalues.omwentelsensor == 'afgesteld'}
					Afgesteld
				{/if}
				</strong>
				{if $reportvalues.omwentelsensor_opmerking != ''}
				<br>Opmerking van de technicus:&nbsp;<i>{$reportvalues.omwentelsensor_opmerking}</i>
				{/if}
			</td>
		</tr>
		<tr>
			<td style=" width:60%">Werking automatische inmeetsensor?</td>
			<td style="width:40%">
				<strong>
				{if $reportvalues.inmeetsensor == 'goed'}
					Goed
				{elseif $reportvalues.inmeetsensor == 'niet_goed'}
					Niet goed
				{elseif $reportvalues.inmeetsensor == 'gekalibreerd'}
					Gekalibreerd
				{elseif $reportvalues.inmeetsensor == 'nvt'}
					Niet van toepassing
				{/if}
				</strong>
				{if $reportvalues.inmeetsensor_opmerking != ''}
				<br>Opmerking van de technicus:&nbsp;<i>{$reportvalues.inmeetsensor_opmerking}</i>
				{/if}
			</td>
		</tr>
		<tr>
			<td style=" width:60%">Werking automatische wielbreedtesensor?</td>
			<td style="width:40%">
				<strong>
				{if $reportvalues.wielbreedtesensor == 'goed'}
					Goed
				{elseif $reportvalues.wielbreedtesensor == 'niet_goed'}
					Niet goed
				{elseif $reportvalues.wielbreedtesensor == 'gekalibreerd'}
					Gekalibreerd
				{elseif $reportvalues.wielbreedtesensor == 'nvt'}
					Niet van toepassing
				{/if}
				</strong>
				{if $reportvalues.wielbreedtesensor_opmerking != ''}
				<br>Opmerking van de technicus:&nbsp;<i>{$reportvalues.wielbreedtesensor_opmerking}</i>
				{/if}
			</td>
		</tr>
		<tr>
			<td style=" width:60%">Werking laser/sonar sensoren hoogteslag/breedteslag?</td>
			<td style="width:40%">
				<strong>
				{if $reportvalues.lasersonar == 'goed'}
					Goed
				{elseif $reportvalues.lasersonar == 'niet_goed'}
					Niet goed
				{elseif $reportvalues.lasersonar == 'gekalibreerd'}
					Gekalibreerd
				{elseif $reportvalues.lasersonar == 'nvt'}
					Niet van toepassing
				{/if}
				</strong>
				{if $reportvalues.lasersonar_opmerking != ''}
				<br>Opmerking van de technicus:&nbsp;<i>{$reportvalues.lasersonar_opmerking}</i>
				{/if}
			</td>
		</tr>
	</tbody>
</table>
<p></p>

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

<p><span><strong>Gegevens technicus en datum van uitvoering:</strong></span></p>

<table border="0" cellpadding="3" cellspacing="0" width="100%" style="border-collapse:collapse;">
	<tbody>
		<tr>
			<td style="width:25%; border: 0.1px solid #000;">Keuringstechnicus:</td>
			<td style="width:25%; border: 0.1px solid #000;"><span>{$reportmeta.user.first_name}&nbsp;{$reportmeta.user.last_name}</span></td>
			<td style="width:25%; border: 0.1px solid #000;">Datum:</td>
			<td style="width:25%; border: 0.1px solid #000;">{$reportmeta.date}</td>
		</tr>
	</tbody>
</table>{/strip}