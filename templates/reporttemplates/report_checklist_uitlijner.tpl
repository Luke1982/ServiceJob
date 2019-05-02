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
<div id="report_filename" style="display: none">checklist_uitlijner_{$reportmeta.accountname}_{$reportmeta.date}</div>
<table border="0" cellpadding="1" cellspacing="0" width="100%">
	<tbody>
		<tr>
			<td style="background-color:rgb(204, 204, 204); text-align:center; border: 0.1px solid #000;">CHECKLIST PERIODIEKE CONTROLE AAN UITLIJNSYSTEMEN</td>
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
			<td style=" width:60%">Bevestiging uitlijnsysteem</td>
			<td style="width:40%">
				<strong>
				{if $reportvalues.montage_controle == 'goed'}
					Goed
				{elseif $reportvalues.montage_controle == 'na_reparatie'}
					Goed, na reparatie
				{elseif $reportvalues.montage_controle == 'niet_goed'}
					Niet goed
				{elseif $reportvalues.montage_controle == 'nvt'}
					Niet van toepassing
				{/if}
				</strong>
				{if $reportvalues.montage_controle_opmerking != ''}
				<br>Opmerking van de technicus:&nbsp;<i>{$reportvalues.montage_controle_opmerking}</i>
				{/if}
			</td>
		</tr>
		<tr>
			<td style=" width:60%">Opspanklemmen in goede conditie?</td>
			<td style="width:40%">
				<strong>
				{if $reportvalues.opspanklemmen == 'ja'}
					Ja
				{elseif $reportvalues.opspanklemmen == 'na_reparatie'}
					Ja, na reparatie
				{elseif $reportvalues.opspanklemmen == 'nee'}
					Nee
				{/if}
				</strong>
				{if $reportvalues.opspanklemmen_opmerking != ''}
				<br>Opmerking van de technicus:&nbsp;<i>{$reportvalues.opspanklemmen_opmerking}</i>
				{/if}
			</td>
		</tr>
		<tr>
			<td style=" width:60%">Draaiplaten in goede conditie?</td>
			<td style="width:40%">
				<strong>
				{if $reportvalues.draaiplaten == 'ja'}
					Ja
				{elseif $reportvalues.draaiplaten == 'na_reparatie'}
					Ja, na reparatie
				{elseif $reportvalues.draaiplaten == 'nee'}
					Nee
				{/if}
				</strong>
				{if $reportvalues.draaiplaten_opmerking != ''}
				<br>Opmerking van de technicus:&nbsp;<i>{$reportvalues.draaiplaten_opmerking}</i>
				{/if}
			</td>
		</tr>
		<tr>
			<td style=" width:60%">Bekabeling in goede conditie?</td>
			<td style="width:40%">
				<strong>
				{if $reportvalues.bekabeling == 'ja'}
					Ja
				{elseif $reportvalues.bekabeling == 'na_reparatie'}
					Ja, na reparatie
				{elseif $reportvalues.bekabeling == 'nee'}
					Nee
				{/if}
				</strong>
				{if $reportvalues.bekabeling_opmerking != ''}
				<br>Opmerking van de technicus:&nbsp;<i>{$reportvalues.bekabeling_opmerking}</i>
				{/if}
			</td>
		</tr>
		<tr>
			<td style=" width:60%">Werking PC:</td>
			<td style="width:40%">
				<strong>
				{if $reportvalues.werking_pc == 'goed'}
					Goed
				{elseif $reportvalues.werking_pc == 'niet_goed'}
					Niet goed
				{elseif $reportvalues.werking_pc == 'verbeterd'}
					Verbeterd
				{/if}
				</strong>
				{if $reportvalues.werking_pc_opmerking != ''}
				<br>Opmerking van de technicus:&nbsp;<i>{$reportvalues.werking_pc_opmerking}</i>
				{/if}
			</td>
		</tr>
		<tr>
			<td style=" width:60%">Kalibratie sporing – camber - caster:</td>
			<td style="width:40%">
				<strong>
				{if $reportvalues.kalibratie == 'goed'}
					Goed
				{elseif $reportvalues.kalibratie == 'niet_goed'}
					Niet goed
				{elseif $reportvalues.kalibratie == 'gekalibreerd'}
					Gekalibreerd
				{/if}
				</strong>
				{if $reportvalues.kalibratie_opmerking != ''}
				<br>Opmerking van de technicus:&nbsp;<i>{$reportvalues.kalibratie_opmerking}</i>
				{/if}
			</td>
		</tr>
		<tr>
			<td style=" width:60%">Instellingen softwareverloop:</td>
			<td style="width:40%">
				<strong>
				{if $reportvalues.softwareverloop == 'goed'}
					Goed
				{elseif $reportvalues.softwareverloop == 'niet_goed'}
					Niet goed
				{elseif $reportvalues.softwareverloop == 'aangepast'}
					Aangepast
				{/if}
				</strong>
				{if $reportvalues.softwareverloop_opmerking != ''}
				<br>Opmerking van de technicus:&nbsp;<i>{$reportvalues.softwareverloop_opmerking}</i>
				{/if}
			</td>
		</tr>
		<tr>
			<td style=" width:60%">Update software uitgevoerd?</td>
			<td style="width:40%">
				<strong>
				{if $reportvalues.software_update == 'ja'}
					Ja
				{elseif $reportvalues.software_update == 'nee'}
					Nee
				{/if}
				</strong>
				{if $reportvalues.software_update_opmerking != ''}
				<br>Opmerking van de technicus:&nbsp;<i>{$reportvalues.software_update_opmerking}</i>
				{/if}
			</td>
		</tr>
		<tr>
			<td style=" width:60%">Database versie:</td>
			<td style="width:40%">
				<strong>{$reportvalues.database_versie}</strong>
				{if $reportvalues.database_versie_opmerking != ''}
				<br>Opmerking van de technicus:&nbsp;<i>{$reportvalues.database_versie_opmerking}</i>
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