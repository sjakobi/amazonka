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
-- Module      : Network.AWS.APIGateway.GetSDK
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Generates a client SDK for a 'RestApi' and 'Stage' .
module Network.AWS.APIGateway.GetSDK
  ( -- * Creating a Request
    getSDK,
    GetSDK,

    -- * Request Lenses
    gsdkParameters,
    gsdkRestAPIId,
    gsdkStageName,
    gsdkSdkType,

    -- * Destructuring the Response
    getSDKResponse,
    GetSDKResponse,

    -- * Response Lenses
    gsrrsContentType,
    gsrrsContentDisposition,
    gsrrsBody,
    gsrrsResponseStatus,
  )
where

import Network.AWS.APIGateway.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Request a new generated client SDK for a 'RestApi' and 'Stage' .
--
--
--
-- /See:/ 'getSDK' smart constructor.
data GetSDK = GetSDK'
  { _gsdkParameters ::
      !(Maybe (Map Text Text)),
    _gsdkRestAPIId :: !Text,
    _gsdkStageName :: !Text,
    _gsdkSdkType :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetSDK' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsdkParameters' - A string-to-string key-value map of query parameters @sdkType@ -dependent properties of the SDK. For @sdkType@ of @objectivec@ or @swift@ , a parameter named @classPrefix@ is required. For @sdkType@ of @android@ , parameters named @groupId@ , @artifactId@ , @artifactVersion@ , and @invokerPackage@ are required. For @sdkType@ of @java@ , parameters named @serviceName@ and @javaPackageName@ are required.
--
-- * 'gsdkRestAPIId' - [Required] The string identifier of the associated 'RestApi' .
--
-- * 'gsdkStageName' - [Required] The name of the 'Stage' that the SDK will use.
--
-- * 'gsdkSdkType' - [Required] The language for the generated SDK. Currently @java@ , @javascript@ , @android@ , @objectivec@ (for iOS), @swift@ (for iOS), and @ruby@ are supported.
getSDK ::
  -- | 'gsdkRestAPIId'
  Text ->
  -- | 'gsdkStageName'
  Text ->
  -- | 'gsdkSdkType'
  Text ->
  GetSDK
getSDK pRestAPIId_ pStageName_ pSdkType_ =
  GetSDK'
    { _gsdkParameters = Nothing,
      _gsdkRestAPIId = pRestAPIId_,
      _gsdkStageName = pStageName_,
      _gsdkSdkType = pSdkType_
    }

-- | A string-to-string key-value map of query parameters @sdkType@ -dependent properties of the SDK. For @sdkType@ of @objectivec@ or @swift@ , a parameter named @classPrefix@ is required. For @sdkType@ of @android@ , parameters named @groupId@ , @artifactId@ , @artifactVersion@ , and @invokerPackage@ are required. For @sdkType@ of @java@ , parameters named @serviceName@ and @javaPackageName@ are required.
gsdkParameters :: Lens' GetSDK (HashMap Text Text)
gsdkParameters = lens _gsdkParameters (\s a -> s {_gsdkParameters = a}) . _Default . _Map

-- | [Required] The string identifier of the associated 'RestApi' .
gsdkRestAPIId :: Lens' GetSDK Text
gsdkRestAPIId = lens _gsdkRestAPIId (\s a -> s {_gsdkRestAPIId = a})

-- | [Required] The name of the 'Stage' that the SDK will use.
gsdkStageName :: Lens' GetSDK Text
gsdkStageName = lens _gsdkStageName (\s a -> s {_gsdkStageName = a})

-- | [Required] The language for the generated SDK. Currently @java@ , @javascript@ , @android@ , @objectivec@ (for iOS), @swift@ (for iOS), and @ruby@ are supported.
gsdkSdkType :: Lens' GetSDK Text
gsdkSdkType = lens _gsdkSdkType (\s a -> s {_gsdkSdkType = a})

instance AWSRequest GetSDK where
  type Rs GetSDK = GetSDKResponse
  request = get apiGateway
  response =
    receiveBytes
      ( \s h x ->
          GetSDKResponse'
            <$> (h .#? "Content-Type")
            <*> (h .#? "Content-Disposition")
            <*> (pure (Just x))
            <*> (pure (fromEnum s))
      )

instance Hashable GetSDK

instance NFData GetSDK

instance ToHeaders GetSDK where
  toHeaders =
    const
      ( mconcat
          ["Accept" =# ("application/json" :: ByteString)]
      )

instance ToPath GetSDK where
  toPath GetSDK' {..} =
    mconcat
      [ "/restapis/",
        toBS _gsdkRestAPIId,
        "/stages/",
        toBS _gsdkStageName,
        "/sdks/",
        toBS _gsdkSdkType
      ]

instance ToQuery GetSDK where
  toQuery GetSDK' {..} =
    mconcat
      [ "parameters"
          =: toQuery
            ( toQueryMap "entry" "key" "value"
                <$> _gsdkParameters
            )
      ]

-- | The binary blob response to 'GetSdk' , which contains the generated SDK.
--
--
--
-- /See:/ 'getSDKResponse' smart constructor.
data GetSDKResponse = GetSDKResponse'
  { _gsrrsContentType ::
      !(Maybe Text),
    _gsrrsContentDisposition :: !(Maybe Text),
    _gsrrsBody :: !(Maybe ByteString),
    _gsrrsResponseStatus :: !Int
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetSDKResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsrrsContentType' - The content-type header value in the HTTP response.
--
-- * 'gsrrsContentDisposition' - The content-disposition header value in the HTTP response.
--
-- * 'gsrrsBody' - The binary blob response to 'GetSdk' , which contains the generated SDK.
--
-- * 'gsrrsResponseStatus' - -- | The response status code.
getSDKResponse ::
  -- | 'gsrrsResponseStatus'
  Int ->
  GetSDKResponse
getSDKResponse pResponseStatus_ =
  GetSDKResponse'
    { _gsrrsContentType = Nothing,
      _gsrrsContentDisposition = Nothing,
      _gsrrsBody = Nothing,
      _gsrrsResponseStatus = pResponseStatus_
    }

-- | The content-type header value in the HTTP response.
gsrrsContentType :: Lens' GetSDKResponse (Maybe Text)
gsrrsContentType = lens _gsrrsContentType (\s a -> s {_gsrrsContentType = a})

-- | The content-disposition header value in the HTTP response.
gsrrsContentDisposition :: Lens' GetSDKResponse (Maybe Text)
gsrrsContentDisposition = lens _gsrrsContentDisposition (\s a -> s {_gsrrsContentDisposition = a})

-- | The binary blob response to 'GetSdk' , which contains the generated SDK.
gsrrsBody :: Lens' GetSDKResponse (Maybe ByteString)
gsrrsBody = lens _gsrrsBody (\s a -> s {_gsrrsBody = a})

-- | -- | The response status code.
gsrrsResponseStatus :: Lens' GetSDKResponse Int
gsrrsResponseStatus = lens _gsrrsResponseStatus (\s a -> s {_gsrrsResponseStatus = a})

instance NFData GetSDKResponse
