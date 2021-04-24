{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.SpekeKeyProvider
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.SpekeKeyProvider where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | If your output group type is HLS, DASH, or Microsoft Smooth, use these settings when doing DRM encryption with a SPEKE-compliant key provider.  If your output group type is CMAF, use the SpekeKeyProviderCmaf settings instead.
--
-- /See:/ 'spekeKeyProvider' smart constructor.
data SpekeKeyProvider = SpekeKeyProvider'
  { _skpResourceId ::
      !(Maybe Text),
    _skpCertificateARN :: !(Maybe Text),
    _skpSystemIds :: !(Maybe [Text]),
    _skpURL :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SpekeKeyProvider' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'skpResourceId' - Specify the resource ID that your SPEKE-compliant key provider uses to identify this content.
--
-- * 'skpCertificateARN' - If you want your key provider to encrypt the content keys that it provides to MediaConvert, set up a certificate with a master key using AWS Certificate Manager. Specify the certificate's Amazon Resource Name (ARN) here.
--
-- * 'skpSystemIds' - Relates to SPEKE implementation. DRM system identifiers. DASH output groups support a max of two system ids. Other group types support one system id. See  https://dashif.org/identifiers/content_protection/ for more details.
--
-- * 'skpURL' - Specify the URL to the key server that your SPEKE-compliant DRM key provider uses to provide keys for encrypting your content.
spekeKeyProvider ::
  SpekeKeyProvider
spekeKeyProvider =
  SpekeKeyProvider'
    { _skpResourceId = Nothing,
      _skpCertificateARN = Nothing,
      _skpSystemIds = Nothing,
      _skpURL = Nothing
    }

-- | Specify the resource ID that your SPEKE-compliant key provider uses to identify this content.
skpResourceId :: Lens' SpekeKeyProvider (Maybe Text)
skpResourceId = lens _skpResourceId (\s a -> s {_skpResourceId = a})

-- | If you want your key provider to encrypt the content keys that it provides to MediaConvert, set up a certificate with a master key using AWS Certificate Manager. Specify the certificate's Amazon Resource Name (ARN) here.
skpCertificateARN :: Lens' SpekeKeyProvider (Maybe Text)
skpCertificateARN = lens _skpCertificateARN (\s a -> s {_skpCertificateARN = a})

-- | Relates to SPEKE implementation. DRM system identifiers. DASH output groups support a max of two system ids. Other group types support one system id. See  https://dashif.org/identifiers/content_protection/ for more details.
skpSystemIds :: Lens' SpekeKeyProvider [Text]
skpSystemIds = lens _skpSystemIds (\s a -> s {_skpSystemIds = a}) . _Default . _Coerce

-- | Specify the URL to the key server that your SPEKE-compliant DRM key provider uses to provide keys for encrypting your content.
skpURL :: Lens' SpekeKeyProvider (Maybe Text)
skpURL = lens _skpURL (\s a -> s {_skpURL = a})

instance FromJSON SpekeKeyProvider where
  parseJSON =
    withObject
      "SpekeKeyProvider"
      ( \x ->
          SpekeKeyProvider'
            <$> (x .:? "resourceId")
            <*> (x .:? "certificateArn")
            <*> (x .:? "systemIds" .!= mempty)
            <*> (x .:? "url")
      )

instance Hashable SpekeKeyProvider

instance NFData SpekeKeyProvider

instance ToJSON SpekeKeyProvider where
  toJSON SpekeKeyProvider' {..} =
    object
      ( catMaybes
          [ ("resourceId" .=) <$> _skpResourceId,
            ("certificateArn" .=) <$> _skpCertificateARN,
            ("systemIds" .=) <$> _skpSystemIds,
            ("url" .=) <$> _skpURL
          ]
      )
