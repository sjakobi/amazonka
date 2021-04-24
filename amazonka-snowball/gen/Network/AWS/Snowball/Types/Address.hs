{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Snowball.Types.Address
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Snowball.Types.Address where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | The address that you want the Snow device(s) associated with a specific job to be shipped to. Addresses are validated at the time of creation. The address you provide must be located within the serviceable area of your region. Although no individual elements of the @Address@ are required, if the address is invalid or unsupported, then an exception is thrown.
--
--
--
-- /See:/ 'address' smart constructor.
data Address = Address'
  { _aPhoneNumber ::
      !(Maybe Text),
    _aCompany :: !(Maybe Text),
    _aIsRestricted :: !(Maybe Bool),
    _aPostalCode :: !(Maybe Text),
    _aStreet1 :: !(Maybe Text),
    _aLandmark :: !(Maybe Text),
    _aCity :: !(Maybe Text),
    _aName :: !(Maybe Text),
    _aAddressId :: !(Maybe Text),
    _aStreet2 :: !(Maybe Text),
    _aStateOrProvince :: !(Maybe Text),
    _aCountry :: !(Maybe Text),
    _aPrefectureOrDistrict :: !(Maybe Text),
    _aStreet3 :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Address' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aPhoneNumber' - The phone number associated with an address that a Snow device is to be delivered to.
--
-- * 'aCompany' - The name of the company to receive a Snow device at an address.
--
-- * 'aIsRestricted' - If the address you are creating is a primary address, then set this option to true. This field is not supported in most regions.
--
-- * 'aPostalCode' - The postal code in an address that a Snow device is to be delivered to.
--
-- * 'aStreet1' - The first line in a street address that a Snow device is to be delivered to.
--
-- * 'aLandmark' - This field is no longer used and the value is ignored.
--
-- * 'aCity' - The city in an address that a Snow device is to be delivered to.
--
-- * 'aName' - The name of a person to receive a Snow device at an address.
--
-- * 'aAddressId' - The unique ID for an address.
--
-- * 'aStreet2' - The second line in a street address that a Snow device is to be delivered to.
--
-- * 'aStateOrProvince' - The state or province in an address that a Snow device is to be delivered to.
--
-- * 'aCountry' - The country in an address that a Snow device is to be delivered to.
--
-- * 'aPrefectureOrDistrict' - This field is no longer used and the value is ignored.
--
-- * 'aStreet3' - The third line in a street address that a Snow device is to be delivered to.
address ::
  Address
address =
  Address'
    { _aPhoneNumber = Nothing,
      _aCompany = Nothing,
      _aIsRestricted = Nothing,
      _aPostalCode = Nothing,
      _aStreet1 = Nothing,
      _aLandmark = Nothing,
      _aCity = Nothing,
      _aName = Nothing,
      _aAddressId = Nothing,
      _aStreet2 = Nothing,
      _aStateOrProvince = Nothing,
      _aCountry = Nothing,
      _aPrefectureOrDistrict = Nothing,
      _aStreet3 = Nothing
    }

-- | The phone number associated with an address that a Snow device is to be delivered to.
aPhoneNumber :: Lens' Address (Maybe Text)
aPhoneNumber = lens _aPhoneNumber (\s a -> s {_aPhoneNumber = a})

-- | The name of the company to receive a Snow device at an address.
aCompany :: Lens' Address (Maybe Text)
aCompany = lens _aCompany (\s a -> s {_aCompany = a})

-- | If the address you are creating is a primary address, then set this option to true. This field is not supported in most regions.
aIsRestricted :: Lens' Address (Maybe Bool)
aIsRestricted = lens _aIsRestricted (\s a -> s {_aIsRestricted = a})

-- | The postal code in an address that a Snow device is to be delivered to.
aPostalCode :: Lens' Address (Maybe Text)
aPostalCode = lens _aPostalCode (\s a -> s {_aPostalCode = a})

-- | The first line in a street address that a Snow device is to be delivered to.
aStreet1 :: Lens' Address (Maybe Text)
aStreet1 = lens _aStreet1 (\s a -> s {_aStreet1 = a})

-- | This field is no longer used and the value is ignored.
aLandmark :: Lens' Address (Maybe Text)
aLandmark = lens _aLandmark (\s a -> s {_aLandmark = a})

-- | The city in an address that a Snow device is to be delivered to.
aCity :: Lens' Address (Maybe Text)
aCity = lens _aCity (\s a -> s {_aCity = a})

-- | The name of a person to receive a Snow device at an address.
aName :: Lens' Address (Maybe Text)
aName = lens _aName (\s a -> s {_aName = a})

-- | The unique ID for an address.
aAddressId :: Lens' Address (Maybe Text)
aAddressId = lens _aAddressId (\s a -> s {_aAddressId = a})

-- | The second line in a street address that a Snow device is to be delivered to.
aStreet2 :: Lens' Address (Maybe Text)
aStreet2 = lens _aStreet2 (\s a -> s {_aStreet2 = a})

-- | The state or province in an address that a Snow device is to be delivered to.
aStateOrProvince :: Lens' Address (Maybe Text)
aStateOrProvince = lens _aStateOrProvince (\s a -> s {_aStateOrProvince = a})

-- | The country in an address that a Snow device is to be delivered to.
aCountry :: Lens' Address (Maybe Text)
aCountry = lens _aCountry (\s a -> s {_aCountry = a})

-- | This field is no longer used and the value is ignored.
aPrefectureOrDistrict :: Lens' Address (Maybe Text)
aPrefectureOrDistrict = lens _aPrefectureOrDistrict (\s a -> s {_aPrefectureOrDistrict = a})

-- | The third line in a street address that a Snow device is to be delivered to.
aStreet3 :: Lens' Address (Maybe Text)
aStreet3 = lens _aStreet3 (\s a -> s {_aStreet3 = a})

instance FromJSON Address where
  parseJSON =
    withObject
      "Address"
      ( \x ->
          Address'
            <$> (x .:? "PhoneNumber")
            <*> (x .:? "Company")
            <*> (x .:? "IsRestricted")
            <*> (x .:? "PostalCode")
            <*> (x .:? "Street1")
            <*> (x .:? "Landmark")
            <*> (x .:? "City")
            <*> (x .:? "Name")
            <*> (x .:? "AddressId")
            <*> (x .:? "Street2")
            <*> (x .:? "StateOrProvince")
            <*> (x .:? "Country")
            <*> (x .:? "PrefectureOrDistrict")
            <*> (x .:? "Street3")
      )

instance Hashable Address

instance NFData Address

instance ToJSON Address where
  toJSON Address' {..} =
    object
      ( catMaybes
          [ ("PhoneNumber" .=) <$> _aPhoneNumber,
            ("Company" .=) <$> _aCompany,
            ("IsRestricted" .=) <$> _aIsRestricted,
            ("PostalCode" .=) <$> _aPostalCode,
            ("Street1" .=) <$> _aStreet1,
            ("Landmark" .=) <$> _aLandmark,
            ("City" .=) <$> _aCity,
            ("Name" .=) <$> _aName,
            ("AddressId" .=) <$> _aAddressId,
            ("Street2" .=) <$> _aStreet2,
            ("StateOrProvince" .=) <$> _aStateOrProvince,
            ("Country" .=) <$> _aCountry,
            ("PrefectureOrDistrict" .=)
              <$> _aPrefectureOrDistrict,
            ("Street3" .=) <$> _aStreet3
          ]
      )
