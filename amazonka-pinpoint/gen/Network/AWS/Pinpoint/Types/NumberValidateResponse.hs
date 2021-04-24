{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.NumberValidateResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.NumberValidateResponse where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Provides information about a phone number.
--
--
--
-- /See:/ 'numberValidateResponse' smart constructor.
data NumberValidateResponse = NumberValidateResponse'
  { _nvrPhoneType ::
      !(Maybe Text),
    _nvrOriginalPhoneNumber ::
      !(Maybe Text),
    _nvrZipCode ::
      !(Maybe Text),
    _nvrOriginalCountryCodeIso2 ::
      !(Maybe Text),
    _nvrCountryCodeIso2 ::
      !(Maybe Text),
    _nvrCounty ::
      !(Maybe Text),
    _nvrCity :: !(Maybe Text),
    _nvrCarrier ::
      !(Maybe Text),
    _nvrPhoneTypeCode ::
      !(Maybe Int),
    _nvrCleansedPhoneNumberNational ::
      !(Maybe Text),
    _nvrCleansedPhoneNumberE164 ::
      !(Maybe Text),
    _nvrCountryCodeNumeric ::
      !(Maybe Text),
    _nvrTimezone ::
      !(Maybe Text),
    _nvrCountry ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'NumberValidateResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nvrPhoneType' - The description of the phone type. Valid values are: MOBILE, LANDLINE, VOIP,                   INVALID, PREPAID, and OTHER.
--
-- * 'nvrOriginalPhoneNumber' - The phone number that was sent in the request body.
--
-- * 'nvrZipCode' - The postal or ZIP code for the location where the phone number was originally registered.
--
-- * 'nvrOriginalCountryCodeIso2' - The two-character code, in ISO 3166-1 alpha-2 format, that was sent in the request body.
--
-- * 'nvrCountryCodeIso2' - The two-character code, in ISO 3166-1 alpha-2 format, for the country or region where the phone number was originally registered.
--
-- * 'nvrCounty' - The name of the county where the phone number was originally registered.
--
-- * 'nvrCity' - The name of the city where the phone number was originally registered.
--
-- * 'nvrCarrier' - The carrier or service provider that the phone number is currently registered with. In some countries and regions, this value may be the carrier or service provider that the phone number was originally registered with.
--
-- * 'nvrPhoneTypeCode' - The phone type, represented by an integer. Valid values are: 0 (mobile), 1 (landline), 2 (VoIP), 3 (invalid), 4 (other), and 5 (prepaid).
--
-- * 'nvrCleansedPhoneNumberNational' - The cleansed phone number, in the format for the location where the phone number was originally registered.
--
-- * 'nvrCleansedPhoneNumberE164' - The cleansed phone number, in E.164 format, for the location where the phone number was originally registered.
--
-- * 'nvrCountryCodeNumeric' - The numeric code for the country or region where the phone number was originally registered.
--
-- * 'nvrTimezone' - The time zone for the location where the phone number was originally registered.
--
-- * 'nvrCountry' - The name of the country or region where the phone number was originally registered.
numberValidateResponse ::
  NumberValidateResponse
numberValidateResponse =
  NumberValidateResponse'
    { _nvrPhoneType = Nothing,
      _nvrOriginalPhoneNumber = Nothing,
      _nvrZipCode = Nothing,
      _nvrOriginalCountryCodeIso2 = Nothing,
      _nvrCountryCodeIso2 = Nothing,
      _nvrCounty = Nothing,
      _nvrCity = Nothing,
      _nvrCarrier = Nothing,
      _nvrPhoneTypeCode = Nothing,
      _nvrCleansedPhoneNumberNational = Nothing,
      _nvrCleansedPhoneNumberE164 = Nothing,
      _nvrCountryCodeNumeric = Nothing,
      _nvrTimezone = Nothing,
      _nvrCountry = Nothing
    }

-- | The description of the phone type. Valid values are: MOBILE, LANDLINE, VOIP,                   INVALID, PREPAID, and OTHER.
nvrPhoneType :: Lens' NumberValidateResponse (Maybe Text)
nvrPhoneType = lens _nvrPhoneType (\s a -> s {_nvrPhoneType = a})

-- | The phone number that was sent in the request body.
nvrOriginalPhoneNumber :: Lens' NumberValidateResponse (Maybe Text)
nvrOriginalPhoneNumber = lens _nvrOriginalPhoneNumber (\s a -> s {_nvrOriginalPhoneNumber = a})

-- | The postal or ZIP code for the location where the phone number was originally registered.
nvrZipCode :: Lens' NumberValidateResponse (Maybe Text)
nvrZipCode = lens _nvrZipCode (\s a -> s {_nvrZipCode = a})

-- | The two-character code, in ISO 3166-1 alpha-2 format, that was sent in the request body.
nvrOriginalCountryCodeIso2 :: Lens' NumberValidateResponse (Maybe Text)
nvrOriginalCountryCodeIso2 = lens _nvrOriginalCountryCodeIso2 (\s a -> s {_nvrOriginalCountryCodeIso2 = a})

-- | The two-character code, in ISO 3166-1 alpha-2 format, for the country or region where the phone number was originally registered.
nvrCountryCodeIso2 :: Lens' NumberValidateResponse (Maybe Text)
nvrCountryCodeIso2 = lens _nvrCountryCodeIso2 (\s a -> s {_nvrCountryCodeIso2 = a})

-- | The name of the county where the phone number was originally registered.
nvrCounty :: Lens' NumberValidateResponse (Maybe Text)
nvrCounty = lens _nvrCounty (\s a -> s {_nvrCounty = a})

-- | The name of the city where the phone number was originally registered.
nvrCity :: Lens' NumberValidateResponse (Maybe Text)
nvrCity = lens _nvrCity (\s a -> s {_nvrCity = a})

-- | The carrier or service provider that the phone number is currently registered with. In some countries and regions, this value may be the carrier or service provider that the phone number was originally registered with.
nvrCarrier :: Lens' NumberValidateResponse (Maybe Text)
nvrCarrier = lens _nvrCarrier (\s a -> s {_nvrCarrier = a})

-- | The phone type, represented by an integer. Valid values are: 0 (mobile), 1 (landline), 2 (VoIP), 3 (invalid), 4 (other), and 5 (prepaid).
nvrPhoneTypeCode :: Lens' NumberValidateResponse (Maybe Int)
nvrPhoneTypeCode = lens _nvrPhoneTypeCode (\s a -> s {_nvrPhoneTypeCode = a})

-- | The cleansed phone number, in the format for the location where the phone number was originally registered.
nvrCleansedPhoneNumberNational :: Lens' NumberValidateResponse (Maybe Text)
nvrCleansedPhoneNumberNational = lens _nvrCleansedPhoneNumberNational (\s a -> s {_nvrCleansedPhoneNumberNational = a})

-- | The cleansed phone number, in E.164 format, for the location where the phone number was originally registered.
nvrCleansedPhoneNumberE164 :: Lens' NumberValidateResponse (Maybe Text)
nvrCleansedPhoneNumberE164 = lens _nvrCleansedPhoneNumberE164 (\s a -> s {_nvrCleansedPhoneNumberE164 = a})

-- | The numeric code for the country or region where the phone number was originally registered.
nvrCountryCodeNumeric :: Lens' NumberValidateResponse (Maybe Text)
nvrCountryCodeNumeric = lens _nvrCountryCodeNumeric (\s a -> s {_nvrCountryCodeNumeric = a})

-- | The time zone for the location where the phone number was originally registered.
nvrTimezone :: Lens' NumberValidateResponse (Maybe Text)
nvrTimezone = lens _nvrTimezone (\s a -> s {_nvrTimezone = a})

-- | The name of the country or region where the phone number was originally registered.
nvrCountry :: Lens' NumberValidateResponse (Maybe Text)
nvrCountry = lens _nvrCountry (\s a -> s {_nvrCountry = a})

instance FromJSON NumberValidateResponse where
  parseJSON =
    withObject
      "NumberValidateResponse"
      ( \x ->
          NumberValidateResponse'
            <$> (x .:? "PhoneType")
            <*> (x .:? "OriginalPhoneNumber")
            <*> (x .:? "ZipCode")
            <*> (x .:? "OriginalCountryCodeIso2")
            <*> (x .:? "CountryCodeIso2")
            <*> (x .:? "County")
            <*> (x .:? "City")
            <*> (x .:? "Carrier")
            <*> (x .:? "PhoneTypeCode")
            <*> (x .:? "CleansedPhoneNumberNational")
            <*> (x .:? "CleansedPhoneNumberE164")
            <*> (x .:? "CountryCodeNumeric")
            <*> (x .:? "Timezone")
            <*> (x .:? "Country")
      )

instance Hashable NumberValidateResponse

instance NFData NumberValidateResponse
