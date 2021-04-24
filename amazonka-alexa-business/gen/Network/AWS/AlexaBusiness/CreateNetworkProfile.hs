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
-- Module      : Network.AWS.AlexaBusiness.CreateNetworkProfile
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a network profile with the specified details.
module Network.AWS.AlexaBusiness.CreateNetworkProfile
  ( -- * Creating a Request
    createNetworkProfile,
    CreateNetworkProfile,

    -- * Request Lenses
    cnpCertificateAuthorityARN,
    cnpTrustAnchors,
    cnpCurrentPassword,
    cnpEapMethod,
    cnpTags,
    cnpDescription,
    cnpNextPassword,
    cnpNetworkProfileName,
    cnpSsid,
    cnpSecurityType,
    cnpClientRequestToken,

    -- * Destructuring the Response
    createNetworkProfileResponse,
    CreateNetworkProfileResponse,

    -- * Response Lenses
    cnprrsNetworkProfileARN,
    cnprrsResponseStatus,
  )
where

import Network.AWS.AlexaBusiness.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createNetworkProfile' smart constructor.
data CreateNetworkProfile = CreateNetworkProfile'
  { _cnpCertificateAuthorityARN ::
      !(Maybe Text),
    _cnpTrustAnchors ::
      !(Maybe (List1 Text)),
    _cnpCurrentPassword ::
      !(Maybe (Sensitive Text)),
    _cnpEapMethod ::
      !(Maybe NetworkEapMethod),
    _cnpTags :: !(Maybe [Tag]),
    _cnpDescription ::
      !(Maybe Text),
    _cnpNextPassword ::
      !(Maybe (Sensitive Text)),
    _cnpNetworkProfileName ::
      !Text,
    _cnpSsid :: !Text,
    _cnpSecurityType ::
      !NetworkSecurityType,
    _cnpClientRequestToken ::
      !Text
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateNetworkProfile' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cnpCertificateAuthorityARN' - The ARN of the Private Certificate Authority (PCA) created in AWS Certificate Manager (ACM). This is used to issue certificates to the devices.
--
-- * 'cnpTrustAnchors' - The root certificates of your authentication server that is installed on your devices and used to trust your authentication server during EAP negotiation.
--
-- * 'cnpCurrentPassword' - The current password of the Wi-Fi network.
--
-- * 'cnpEapMethod' - The authentication standard that is used in the EAP framework. Currently, EAP_TLS is supported.
--
-- * 'cnpTags' - The tags to be added to the specified resource. Do not provide system tags.
--
-- * 'cnpDescription' - Detailed information about a device's network profile.
--
-- * 'cnpNextPassword' - The next, or subsequent, password of the Wi-Fi network. This password is asynchronously transmitted to the device and is used when the password of the network changes to NextPassword.
--
-- * 'cnpNetworkProfileName' - The name of the network profile associated with a device.
--
-- * 'cnpSsid' - The SSID of the Wi-Fi network.
--
-- * 'cnpSecurityType' - The security type of the Wi-Fi network. This can be WPA2_ENTERPRISE, WPA2_PSK, WPA_PSK, WEP, or OPEN.
--
-- * 'cnpClientRequestToken' - Undocumented member.
createNetworkProfile ::
  -- | 'cnpNetworkProfileName'
  Text ->
  -- | 'cnpSsid'
  Text ->
  -- | 'cnpSecurityType'
  NetworkSecurityType ->
  -- | 'cnpClientRequestToken'
  Text ->
  CreateNetworkProfile
createNetworkProfile
  pNetworkProfileName_
  pSsid_
  pSecurityType_
  pClientRequestToken_ =
    CreateNetworkProfile'
      { _cnpCertificateAuthorityARN =
          Nothing,
        _cnpTrustAnchors = Nothing,
        _cnpCurrentPassword = Nothing,
        _cnpEapMethod = Nothing,
        _cnpTags = Nothing,
        _cnpDescription = Nothing,
        _cnpNextPassword = Nothing,
        _cnpNetworkProfileName = pNetworkProfileName_,
        _cnpSsid = pSsid_,
        _cnpSecurityType = pSecurityType_,
        _cnpClientRequestToken = pClientRequestToken_
      }

-- | The ARN of the Private Certificate Authority (PCA) created in AWS Certificate Manager (ACM). This is used to issue certificates to the devices.
cnpCertificateAuthorityARN :: Lens' CreateNetworkProfile (Maybe Text)
cnpCertificateAuthorityARN = lens _cnpCertificateAuthorityARN (\s a -> s {_cnpCertificateAuthorityARN = a})

-- | The root certificates of your authentication server that is installed on your devices and used to trust your authentication server during EAP negotiation.
cnpTrustAnchors :: Lens' CreateNetworkProfile (Maybe (NonEmpty Text))
cnpTrustAnchors = lens _cnpTrustAnchors (\s a -> s {_cnpTrustAnchors = a}) . mapping _List1

-- | The current password of the Wi-Fi network.
cnpCurrentPassword :: Lens' CreateNetworkProfile (Maybe Text)
cnpCurrentPassword = lens _cnpCurrentPassword (\s a -> s {_cnpCurrentPassword = a}) . mapping _Sensitive

-- | The authentication standard that is used in the EAP framework. Currently, EAP_TLS is supported.
cnpEapMethod :: Lens' CreateNetworkProfile (Maybe NetworkEapMethod)
cnpEapMethod = lens _cnpEapMethod (\s a -> s {_cnpEapMethod = a})

-- | The tags to be added to the specified resource. Do not provide system tags.
cnpTags :: Lens' CreateNetworkProfile [Tag]
cnpTags = lens _cnpTags (\s a -> s {_cnpTags = a}) . _Default . _Coerce

-- | Detailed information about a device's network profile.
cnpDescription :: Lens' CreateNetworkProfile (Maybe Text)
cnpDescription = lens _cnpDescription (\s a -> s {_cnpDescription = a})

-- | The next, or subsequent, password of the Wi-Fi network. This password is asynchronously transmitted to the device and is used when the password of the network changes to NextPassword.
cnpNextPassword :: Lens' CreateNetworkProfile (Maybe Text)
cnpNextPassword = lens _cnpNextPassword (\s a -> s {_cnpNextPassword = a}) . mapping _Sensitive

-- | The name of the network profile associated with a device.
cnpNetworkProfileName :: Lens' CreateNetworkProfile Text
cnpNetworkProfileName = lens _cnpNetworkProfileName (\s a -> s {_cnpNetworkProfileName = a})

-- | The SSID of the Wi-Fi network.
cnpSsid :: Lens' CreateNetworkProfile Text
cnpSsid = lens _cnpSsid (\s a -> s {_cnpSsid = a})

-- | The security type of the Wi-Fi network. This can be WPA2_ENTERPRISE, WPA2_PSK, WPA_PSK, WEP, or OPEN.
cnpSecurityType :: Lens' CreateNetworkProfile NetworkSecurityType
cnpSecurityType = lens _cnpSecurityType (\s a -> s {_cnpSecurityType = a})

-- | Undocumented member.
cnpClientRequestToken :: Lens' CreateNetworkProfile Text
cnpClientRequestToken = lens _cnpClientRequestToken (\s a -> s {_cnpClientRequestToken = a})

instance AWSRequest CreateNetworkProfile where
  type
    Rs CreateNetworkProfile =
      CreateNetworkProfileResponse
  request = postJSON alexaBusiness
  response =
    receiveJSON
      ( \s h x ->
          CreateNetworkProfileResponse'
            <$> (x .?> "NetworkProfileArn") <*> (pure (fromEnum s))
      )

instance Hashable CreateNetworkProfile

instance NFData CreateNetworkProfile

instance ToHeaders CreateNetworkProfile where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AlexaForBusiness.CreateNetworkProfile" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateNetworkProfile where
  toJSON CreateNetworkProfile' {..} =
    object
      ( catMaybes
          [ ("CertificateAuthorityArn" .=)
              <$> _cnpCertificateAuthorityARN,
            ("TrustAnchors" .=) <$> _cnpTrustAnchors,
            ("CurrentPassword" .=) <$> _cnpCurrentPassword,
            ("EapMethod" .=) <$> _cnpEapMethod,
            ("Tags" .=) <$> _cnpTags,
            ("Description" .=) <$> _cnpDescription,
            ("NextPassword" .=) <$> _cnpNextPassword,
            Just
              ("NetworkProfileName" .= _cnpNetworkProfileName),
            Just ("Ssid" .= _cnpSsid),
            Just ("SecurityType" .= _cnpSecurityType),
            Just
              ("ClientRequestToken" .= _cnpClientRequestToken)
          ]
      )

instance ToPath CreateNetworkProfile where
  toPath = const "/"

instance ToQuery CreateNetworkProfile where
  toQuery = const mempty

-- | /See:/ 'createNetworkProfileResponse' smart constructor.
data CreateNetworkProfileResponse = CreateNetworkProfileResponse'
  { _cnprrsNetworkProfileARN ::
      !(Maybe Text),
    _cnprrsResponseStatus ::
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

-- | Creates a value of 'CreateNetworkProfileResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cnprrsNetworkProfileARN' - The ARN of the network profile associated with a device.
--
-- * 'cnprrsResponseStatus' - -- | The response status code.
createNetworkProfileResponse ::
  -- | 'cnprrsResponseStatus'
  Int ->
  CreateNetworkProfileResponse
createNetworkProfileResponse pResponseStatus_ =
  CreateNetworkProfileResponse'
    { _cnprrsNetworkProfileARN =
        Nothing,
      _cnprrsResponseStatus = pResponseStatus_
    }

-- | The ARN of the network profile associated with a device.
cnprrsNetworkProfileARN :: Lens' CreateNetworkProfileResponse (Maybe Text)
cnprrsNetworkProfileARN = lens _cnprrsNetworkProfileARN (\s a -> s {_cnprrsNetworkProfileARN = a})

-- | -- | The response status code.
cnprrsResponseStatus :: Lens' CreateNetworkProfileResponse Int
cnprrsResponseStatus = lens _cnprrsResponseStatus (\s a -> s {_cnprrsResponseStatus = a})

instance NFData CreateNetworkProfileResponse
