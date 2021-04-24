{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ImportExport.GetShippingLabel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This operation generates a pre-paid UPS shipping label that you will use to ship your device to AWS for processing.
module Network.AWS.ImportExport.GetShippingLabel
  ( -- * Creating a Request
    getShippingLabel,
    GetShippingLabel,

    -- * Request Lenses
    gslCompany,
    gslPhoneNumber,
    gslPostalCode,
    gslStreet1,
    gslAPIVersion,
    gslName,
    gslCity,
    gslStreet2,
    gslStateOrProvince,
    gslCountry,
    gslStreet3,
    gslJobIds,

    -- * Destructuring the Response
    getShippingLabelResponse,
    GetShippingLabelResponse,

    -- * Response Lenses
    gslrrsWarning,
    gslrrsShippingLabelURL,
    gslrrsResponseStatus,
  )
where

import Network.AWS.ImportExport.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getShippingLabel' smart constructor.
data GetShippingLabel = GetShippingLabel'
  { _gslCompany ::
      !(Maybe Text),
    _gslPhoneNumber :: !(Maybe Text),
    _gslPostalCode :: !(Maybe Text),
    _gslStreet1 :: !(Maybe Text),
    _gslAPIVersion :: !(Maybe Text),
    _gslName :: !(Maybe Text),
    _gslCity :: !(Maybe Text),
    _gslStreet2 :: !(Maybe Text),
    _gslStateOrProvince :: !(Maybe Text),
    _gslCountry :: !(Maybe Text),
    _gslStreet3 :: !(Maybe Text),
    _gslJobIds :: ![Text]
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetShippingLabel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gslCompany' - Undocumented member.
--
-- * 'gslPhoneNumber' - Undocumented member.
--
-- * 'gslPostalCode' - Undocumented member.
--
-- * 'gslStreet1' - Undocumented member.
--
-- * 'gslAPIVersion' - Undocumented member.
--
-- * 'gslName' - Undocumented member.
--
-- * 'gslCity' - Undocumented member.
--
-- * 'gslStreet2' - Undocumented member.
--
-- * 'gslStateOrProvince' - Undocumented member.
--
-- * 'gslCountry' - Undocumented member.
--
-- * 'gslStreet3' - Undocumented member.
--
-- * 'gslJobIds' - Undocumented member.
getShippingLabel ::
  GetShippingLabel
getShippingLabel =
  GetShippingLabel'
    { _gslCompany = Nothing,
      _gslPhoneNumber = Nothing,
      _gslPostalCode = Nothing,
      _gslStreet1 = Nothing,
      _gslAPIVersion = Nothing,
      _gslName = Nothing,
      _gslCity = Nothing,
      _gslStreet2 = Nothing,
      _gslStateOrProvince = Nothing,
      _gslCountry = Nothing,
      _gslStreet3 = Nothing,
      _gslJobIds = mempty
    }

-- | Undocumented member.
gslCompany :: Lens' GetShippingLabel (Maybe Text)
gslCompany = lens _gslCompany (\s a -> s {_gslCompany = a})

-- | Undocumented member.
gslPhoneNumber :: Lens' GetShippingLabel (Maybe Text)
gslPhoneNumber = lens _gslPhoneNumber (\s a -> s {_gslPhoneNumber = a})

-- | Undocumented member.
gslPostalCode :: Lens' GetShippingLabel (Maybe Text)
gslPostalCode = lens _gslPostalCode (\s a -> s {_gslPostalCode = a})

-- | Undocumented member.
gslStreet1 :: Lens' GetShippingLabel (Maybe Text)
gslStreet1 = lens _gslStreet1 (\s a -> s {_gslStreet1 = a})

-- | Undocumented member.
gslAPIVersion :: Lens' GetShippingLabel (Maybe Text)
gslAPIVersion = lens _gslAPIVersion (\s a -> s {_gslAPIVersion = a})

-- | Undocumented member.
gslName :: Lens' GetShippingLabel (Maybe Text)
gslName = lens _gslName (\s a -> s {_gslName = a})

-- | Undocumented member.
gslCity :: Lens' GetShippingLabel (Maybe Text)
gslCity = lens _gslCity (\s a -> s {_gslCity = a})

-- | Undocumented member.
gslStreet2 :: Lens' GetShippingLabel (Maybe Text)
gslStreet2 = lens _gslStreet2 (\s a -> s {_gslStreet2 = a})

-- | Undocumented member.
gslStateOrProvince :: Lens' GetShippingLabel (Maybe Text)
gslStateOrProvince = lens _gslStateOrProvince (\s a -> s {_gslStateOrProvince = a})

-- | Undocumented member.
gslCountry :: Lens' GetShippingLabel (Maybe Text)
gslCountry = lens _gslCountry (\s a -> s {_gslCountry = a})

-- | Undocumented member.
gslStreet3 :: Lens' GetShippingLabel (Maybe Text)
gslStreet3 = lens _gslStreet3 (\s a -> s {_gslStreet3 = a})

-- | Undocumented member.
gslJobIds :: Lens' GetShippingLabel [Text]
gslJobIds = lens _gslJobIds (\s a -> s {_gslJobIds = a}) . _Coerce

instance AWSRequest GetShippingLabel where
  type Rs GetShippingLabel = GetShippingLabelResponse
  request = postQuery importExport
  response =
    receiveXMLWrapper
      "GetShippingLabelResult"
      ( \s h x ->
          GetShippingLabelResponse'
            <$> (x .@? "Warning")
            <*> (x .@? "ShippingLabelURL")
            <*> (pure (fromEnum s))
      )

instance Hashable GetShippingLabel

instance NFData GetShippingLabel

instance ToHeaders GetShippingLabel where
  toHeaders = const mempty

instance ToPath GetShippingLabel where
  toPath = const "/"

instance ToQuery GetShippingLabel where
  toQuery GetShippingLabel' {..} =
    mconcat
      [ "Operation=GetShippingLabel",
        "Action" =: ("GetShippingLabel" :: ByteString),
        "Version" =: ("2010-06-01" :: ByteString),
        "company" =: _gslCompany,
        "phoneNumber" =: _gslPhoneNumber,
        "postalCode" =: _gslPostalCode,
        "street1" =: _gslStreet1,
        "APIVersion" =: _gslAPIVersion,
        "name" =: _gslName,
        "city" =: _gslCity,
        "street2" =: _gslStreet2,
        "stateOrProvince" =: _gslStateOrProvince,
        "country" =: _gslCountry,
        "street3" =: _gslStreet3,
        "jobIds" =: toQueryList "member" _gslJobIds
      ]

-- | /See:/ 'getShippingLabelResponse' smart constructor.
data GetShippingLabelResponse = GetShippingLabelResponse'
  { _gslrrsWarning ::
      !(Maybe Text),
    _gslrrsShippingLabelURL ::
      !(Maybe Text),
    _gslrrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetShippingLabelResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gslrrsWarning' - Undocumented member.
--
-- * 'gslrrsShippingLabelURL' - Undocumented member.
--
-- * 'gslrrsResponseStatus' - -- | The response status code.
getShippingLabelResponse ::
  -- | 'gslrrsResponseStatus'
  Int ->
  GetShippingLabelResponse
getShippingLabelResponse pResponseStatus_ =
  GetShippingLabelResponse'
    { _gslrrsWarning = Nothing,
      _gslrrsShippingLabelURL = Nothing,
      _gslrrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
gslrrsWarning :: Lens' GetShippingLabelResponse (Maybe Text)
gslrrsWarning = lens _gslrrsWarning (\s a -> s {_gslrrsWarning = a})

-- | Undocumented member.
gslrrsShippingLabelURL :: Lens' GetShippingLabelResponse (Maybe Text)
gslrrsShippingLabelURL = lens _gslrrsShippingLabelURL (\s a -> s {_gslrrsShippingLabelURL = a})

-- | -- | The response status code.
gslrrsResponseStatus :: Lens' GetShippingLabelResponse Int
gslrrsResponseStatus = lens _gslrrsResponseStatus (\s a -> s {_gslrrsResponseStatus = a})

instance NFData GetShippingLabelResponse
