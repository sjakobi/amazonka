{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CertificateManagerPCA.Types.AccessDescription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CertificateManagerPCA.Types.AccessDescription where

import Network.AWS.CertificateManagerPCA.Types.AccessMethod
import Network.AWS.CertificateManagerPCA.Types.GeneralName
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Provides access information used by the @authorityInfoAccess@ and @subjectInfoAccess@ extensions described in <https://tools.ietf.org/html/rfc5280 RFC 5280> .
--
--
--
-- /See:/ 'accessDescription' smart constructor.
data AccessDescription = AccessDescription'
  { _adAccessMethod ::
      !AccessMethod,
    _adAccessLocation :: !GeneralName
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'AccessDescription' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adAccessMethod' - The type and format of @AccessDescription@ information.
--
-- * 'adAccessLocation' - The location of @AccessDescription@ information.
accessDescription ::
  -- | 'adAccessMethod'
  AccessMethod ->
  -- | 'adAccessLocation'
  GeneralName ->
  AccessDescription
accessDescription pAccessMethod_ pAccessLocation_ =
  AccessDescription'
    { _adAccessMethod =
        pAccessMethod_,
      _adAccessLocation = pAccessLocation_
    }

-- | The type and format of @AccessDescription@ information.
adAccessMethod :: Lens' AccessDescription AccessMethod
adAccessMethod = lens _adAccessMethod (\s a -> s {_adAccessMethod = a})

-- | The location of @AccessDescription@ information.
adAccessLocation :: Lens' AccessDescription GeneralName
adAccessLocation = lens _adAccessLocation (\s a -> s {_adAccessLocation = a})

instance FromJSON AccessDescription where
  parseJSON =
    withObject
      "AccessDescription"
      ( \x ->
          AccessDescription'
            <$> (x .: "AccessMethod") <*> (x .: "AccessLocation")
      )

instance Hashable AccessDescription

instance NFData AccessDescription

instance ToJSON AccessDescription where
  toJSON AccessDescription' {..} =
    object
      ( catMaybes
          [ Just ("AccessMethod" .= _adAccessMethod),
            Just ("AccessLocation" .= _adAccessLocation)
          ]
      )
