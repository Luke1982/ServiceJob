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
<div id="report_filename" style="display: none">checklist_bandendemontage_{$reportmeta.accountname}_{$reportmeta.date}</div>
<table border="0" cellpadding="1" cellspacing="0" width="100%">
	<tbody>
		<tr>
			<td style="background-color:rgb(204, 204, 204); text-align:center; border: 0.1px solid #000;">CHECKLIST PERIODIEKE CONTROLE AAN BANDENDEMONTAGE MACHINES</td>
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
			<td style=" width:60%">Luchtlekkage in systeem aanwezig tijdens gebruik?</td>
			<td style="width:40%">
				<strong>
				{if $reportvalues.luchtlekkage_controle == 'ja'}
					Ja
				{elseif $reportvalues.luchtlekkage_controle == 'na_reparatie'}
					Ja, na reparatie
				{elseif $reportvalues.luchtlekkage_controle == 'nee'}
					Nee
				{/if}
				</strong>
				{if $reportvalues.luchtlekkage_controle_opmerking != ''}
				<br>Opmerking van de technicus:&nbsp;<i>{$reportvalues.luchtlekkage_controle_opmerking}</i>
				{/if}
			</td>
		</tr>
		<tr>
			<td style=" width:60%">Luchtdruk in overeenkomst met fabrieksvoorschrift?</td>
			<td style="width:40%">
				<strong>
				{if $reportvalues.luchtdruk_controle == 'ja'}
					Ja
				{elseif $reportvalues.luchtdruk_controle == 'na_reparatie'}
					Ja, na reparatie
				{elseif $reportvalues.luchtdruk_controle == 'nee'}
					Nee
				{/if}
				</strong>
				{if $reportvalues.luchtdruk_controle_opmerking != ''}
				<br>Opmerking van de technicus:&nbsp;<i>{$reportvalues.luchtdruk_controle_opmerking}</i>
				{/if}
			</td>
		</tr>
		<tr>
			<td style=" width:60%">Luchtdruk afgesteld?</td>
			<td style="width:40%">
				<strong>
				{if $reportvalues.luchtdruk_afstelling == 'ja'}
					Ja
				{elseif $reportvalues.luchtdruk_afstelling == 'niet_mogelijk'}
					Niet mogelijk
				{elseif $reportvalues.luchtdruk_afstelling == 'nee'}
					Nee
				{/if}
				</strong>
				{if $reportvalues.luchtdruk_afstelling_opmerking != ''}
				<br>Opmerking van de technicus:&nbsp;<i>{$reportvalues.luchtdruk_afstelling_opmerking}</i>
				{/if}
			</td>
		</tr>
		<tr>
			<td style=" width:60%">Niveau olienevelaar?</td>
			<td style="width:40%">
				<strong>
				{if $reportvalues.niveau_nevelaar == 'leeg'}
					Leeg
				{elseif $reportvalues.niveau_nevelaar == 'half_vol'}
					Half vol
				{elseif $reportvalues.niveau_nevelaar == 'vol'}
					Vol
				{/if}
				</strong>
				{if $reportvalues.niveau_nevelaar_opmerking != ''}
				<br>Opmerking van de technicus:&nbsp;<i>{$reportvalues.niveau_nevelaar_opmerking}</i>
				{/if}
			</td>
		</tr>
		<tr>
			<td style=" width:60%">Olievernevelaar vernevelt tijdens gebruik:</td>
			<td style="width:40%">
				<strong>
				{if $reportvalues.verneveling_controle == 'goed'}
					Goed
				{elseif $reportvalues.verneveling_controle == 'te_veel'}
					Te veel
				{elseif $reportvalues.verneveling_controle == 'te_weinig'}
					Te weinig
				{/if}
				</strong>
				{if $reportvalues.verneveling_controle_opmerking != ''}
				<br>Opmerking van de technicus:&nbsp;<i>{$reportvalues.verneveling_controle_opmerking}</i>
				{/if}
			</td>
		</tr>
		<tr>
			<td style=" width:60%">Olievernevelaar bijgevuld en/of afgesteld?</td>
			<td style="width:40%">
				<strong>
				{if $reportvalues.verneveling_afgesteld == 'ja'}
					Ja
				{elseif $reportvalues.verneveling_afgesteld == 'nee'}
					Nee
				{/if}
				</strong>
				{if $reportvalues.verneveling_afgesteld_opmerking != ''}
				<br>Opmerking van de technicus:&nbsp;<i>{$reportvalues.verneveling_afgesteld_opmerking}</i>
				{/if}
			</td>
		</tr>
		<tr>
			<td style=" width:60%">Beweegbare delen gereinigd en gesmeerd?</td>
			<td style="width:40%">
				<strong>
				{if $reportvalues.bewegende_delen == 'ja'}
					Ja
				{elseif $reportvalues.bewegende_delen == 'nee'}
					Nee
				{/if}
				</strong>
				{if $reportvalues.bewegende_delen_opmerking != ''}
				<br>Opmerking van de technicus:&nbsp;<i>{$reportvalues.bewegende_delen_opmerking}</i>
				{/if}
			</td>
		</tr>
		<tr>
			<td style=" width:60%">Hulparm(en) afgesteld indien mogelijk?</td>
			<td style="width:40%">
				<strong>
				{if $reportvalues.hulparmen_afgesteld == 'ja'}
					Ja
				{elseif $reportvalues.hulparmen_afgesteld == 'nee'}
					Nee
				{elseif $reportvalues.hulparmen_afgesteld == 'nvt'}
					N.v.t.
				{/if}
				</strong>
				{if $reportvalues.hulparmen_afgesteld_opmerking != ''}
				<br>Opmerking van de technicus:&nbsp;<i>{$reportvalues.hulparmen_afgesteld_opmerking}</i>
				{/if}
			</td>
		</tr>
		<tr>
			<td style=" width:60%">Schakelt motorschakelaar naar behoren?</td>
			<td style="width:40%">
				<strong>
				{if $reportvalues.schakelt_motorschakelaar == 'ja'}
					Ja
				{elseif $reportvalues.schakelt_motorschakelaar == 'nee'}
					Nee
				{/if}
				</strong>
				{if $reportvalues.schakelt_motorschakelaar_opmerking != ''}
				<br>Opmerking van de technicus:&nbsp;<i>{$reportvalues.schakelt_motorschakelaar_opmerking}</i>
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