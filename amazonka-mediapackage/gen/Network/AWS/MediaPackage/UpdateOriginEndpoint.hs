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
-- Module      : Network.AWS.MediaPackage.UpdateOriginEndpoint
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing OriginEndpoint.
module Network.AWS.MediaPackage.UpdateOriginEndpoint
  ( -- * Creating a Request
    updateOriginEndpoint,
    UpdateOriginEndpoint,

    -- * Request Lenses
    uoeDashPackage,
    uoeStartoverWindowSeconds,
    uoeOrigination,
    uoeCmafPackage,
    uoeManifestName,
    uoeWhitelist,
    uoeMssPackage,
    uoeDescription,
    uoeTimeDelaySeconds,
    uoeAuthorization,
    uoeHlsPackage,
    uoeId,

    -- * Destructuring the Response
    updateOriginEndpointResponse,
    UpdateOriginEndpointResponse,

    -- * Response Lenses
    uoerrsDashPackage,
    uoerrsStartoverWindowSeconds,
    uoerrsOrigination,
    uoerrsChannelId,
    uoerrsCmafPackage,
    uoerrsManifestName,
    uoerrsARN,
    uoerrsId,
    uoerrsWhitelist,
    uoerrsMssPackage,
    uoerrsTags,
    uoerrsDescription,
    uoerrsTimeDelaySeconds,
    uoerrsAuthorization,
    uoerrsURL,
    uoerrsHlsPackage,
    uoerrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MediaPackage.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Configuration parameters used to update an existing OriginEndpoint.
--
-- /See:/ 'updateOriginEndpoint' smart constructor.
data UpdateOriginEndpoint = UpdateOriginEndpoint'
  { _uoeDashPackage ::
      !(Maybe DashPackage),
    _uoeStartoverWindowSeconds ::
      !(Maybe Int),
    _uoeOrigination ::
      !(Maybe Origination),
    _uoeCmafPackage ::
      !( Maybe
           CmafPackageCreateOrUpdateParameters
       ),
    _uoeManifestName ::
      !(Maybe Text),
    _uoeWhitelist ::
      !(Maybe [Text]),
    _uoeMssPackage ::
      !(Maybe MssPackage),
    _uoeDescription ::
      !(Maybe Text),
    _uoeTimeDelaySeconds ::
      !(Maybe Int),
    _uoeAuthorization ::
      !(Maybe Authorization),
    _uoeHlsPackage ::
      !(Maybe HlsPackage),
    _uoeId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateOriginEndpoint' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uoeDashPackage' - Undocumented member.
--
-- * 'uoeStartoverWindowSeconds' - Maximum duration (in seconds) of content to retain for startover playback. If not specified, startover playback will be disabled for the OriginEndpoint.
--
-- * 'uoeOrigination' - Control whether origination of video is allowed for this OriginEndpoint. If set to ALLOW, the OriginEndpoint may by requested, pursuant to any other form of access control. If set to DENY, the OriginEndpoint may not be requested. This can be helpful for Live to VOD harvesting, or for temporarily disabling origination
--
-- * 'uoeCmafPackage' - Undocumented member.
--
-- * 'uoeManifestName' - A short string that will be appended to the end of the Endpoint URL.
--
-- * 'uoeWhitelist' - A list of source IP CIDR blocks that will be allowed to access the OriginEndpoint.
--
-- * 'uoeMssPackage' - Undocumented member.
--
-- * 'uoeDescription' - A short text description of the OriginEndpoint.
--
-- * 'uoeTimeDelaySeconds' - Amount of delay (in seconds) to enforce on the playback of live content. If not specified, there will be no time delay in effect for the OriginEndpoint.
--
-- * 'uoeAuthorization' - Undocumented member.
--
-- * 'uoeHlsPackage' - Undocumented member.
--
-- * 'uoeId' - The ID of the OriginEndpoint to update.
updateOriginEndpoint ::
  -- | 'uoeId'
  Text ->
  UpdateOriginEndpoint
updateOriginEndpoint pId_ =
  UpdateOriginEndpoint'
    { _uoeDashPackage = Nothing,
      _uoeStartoverWindowSeconds = Nothing,
      _uoeOrigination = Nothing,
      _uoeCmafPackage = Nothing,
      _uoeManifestName = Nothing,
      _uoeWhitelist = Nothing,
      _uoeMssPackage = Nothing,
      _uoeDescription = Nothing,
      _uoeTimeDelaySeconds = Nothing,
      _uoeAuthorization = Nothing,
      _uoeHlsPackage = Nothing,
      _uoeId = pId_
    }

-- | Undocumented member.
uoeDashPackage :: Lens' UpdateOriginEndpoint (Maybe DashPackage)
uoeDashPackage = lens _uoeDashPackage (\s a -> s {_uoeDashPackage = a})

-- | Maximum duration (in seconds) of content to retain for startover playback. If not specified, startover playback will be disabled for the OriginEndpoint.
uoeStartoverWindowSeconds :: Lens' UpdateOriginEndpoint (Maybe Int)
uoeStartoverWindowSeconds = lens _uoeStartoverWindowSeconds (\s a -> s {_uoeStartoverWindowSeconds = a})

-- | Control whether origination of video is allowed for this OriginEndpoint. If set to ALLOW, the OriginEndpoint may by requested, pursuant to any other form of access control. If set to DENY, the OriginEndpoint may not be requested. This can be helpful for Live to VOD harvesting, or for temporarily disabling origination
uoeOrigination :: Lens' UpdateOriginEndpoint (Maybe Origination)
uoeOrigination = lens _uoeOrigination (\s a -> s {_uoeOrigination = a})

-- | Undocumented member.
uoeCmafPackage :: Lens' UpdateOriginEndpoint (Maybe CmafPackageCreateOrUpdateParameters)
uoeCmafPackage = lens _uoeCmafPackage (\s a -> s {_uoeCmafPackage = a})

-- | A short string that will be appended to the end of the Endpoint URL.
uoeManifestName :: Lens' UpdateOriginEndpoint (Maybe Text)
uoeManifestName = lens _uoeManifestName (\s a -> s {_uoeManifestName = a})

-- | A list of source IP CIDR blocks that will be allowed to access the OriginEndpoint.
uoeWhitelist :: Lens' UpdateOriginEndpoint [Text]
uoeWhitelist = lens _uoeWhitelist (\s a -> s {_uoeWhitelist = a}) . _Default . _Coerce

-- | Undocumented member.
uoeMssPackage :: Lens' UpdateOriginEndpoint (Maybe MssPackage)
uoeMssPackage = lens _uoeMssPackage (\s a -> s {_uoeMssPackage = a})

-- | A short text description of the OriginEndpoint.
uoeDescription :: Lens' UpdateOriginEndpoint (Maybe Text)
uoeDescription = lens _uoeDescription (\s a -> s {_uoeDescription = a})

-- | Amount of delay (in seconds) to enforce on the playback of live content. If not specified, there will be no time delay in effect for the OriginEndpoint.
uoeTimeDelaySeconds :: Lens' UpdateOriginEndpoint (Maybe Int)
uoeTimeDelaySeconds = lens _uoeTimeDelaySeconds (\s a -> s {_uoeTimeDelaySeconds = a})

-- | Undocumented member.
uoeAuthorization :: Lens' UpdateOriginEndpoint (Maybe Authorization)
uoeAuthorization = lens _uoeAuthorization (\s a -> s {_uoeAuthorization = a})

-- | Undocumented member.
uoeHlsPackage :: Lens' UpdateOriginEndpoint (Maybe HlsPackage)
uoeHlsPackage = lens _uoeHlsPackage (\s a -> s {_uoeHlsPackage = a})

-- | The ID of the OriginEndpoint to update.
uoeId :: Lens' UpdateOriginEndpoint Text
uoeId = lens _uoeId (\s a -> s {_uoeId = a})

instance AWSRequest UpdateOriginEndpoint where
  type
    Rs UpdateOriginEndpoint =
      UpdateOriginEndpointResponse
  request = putJSON mediaPackage
  response =
    receiveJSON
      ( \s h x ->
          UpdateOriginEndpointResponse'
            <$> (x .?> "dashPackage")
            <*> (x .?> "startoverWindowSeconds")
            <*> (x .?> "origination")
            <*> (x .?> "channelId")
            <*> (x .?> "cmafPackage")
            <*> (x .?> "manifestName")
            <*> (x .?> "arn")
            <*> (x .?> "id")
            <*> (x .?> "whitelist" .!@ mempty)
            <*> (x .?> "mssPackage")
            <*> (x .?> "tags" .!@ mempty)
            <*> (x .?> "description")
            <*> (x .?> "timeDelaySeconds")
            <*> (x .?> "authorization")
            <*> (x .?> "url")
            <*> (x .?> "hlsPackage")
            <*> (pure (fromEnum s))
      )

instance Hashable UpdateOriginEndpoint

instance NFData UpdateOriginEndpoint

instance ToHeaders UpdateOriginEndpoint where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateOriginEndpoint where
  toJSON UpdateOriginEndpoint' {..} =
    object
      ( catMaybes
          [ ("dashPackage" .=) <$> _uoeDashPackage,
            ("startoverWindowSeconds" .=)
              <$> _uoeStartoverWindowSeconds,
            ("origination" .=) <$> _uoeOrigination,
            ("cmafPackage" .=) <$> _uoeCmafPackage,
            ("manifestName" .=) <$> _uoeManifestName,
            ("whitelist" .=) <$> _uoeWhitelist,
            ("mssPackage" .=) <$> _uoeMssPackage,
            ("description" .=) <$> _uoeDescription,
            ("timeDelaySeconds" .=) <$> _uoeTimeDelaySeconds,
            ("authorization" .=) <$> _uoeAuthorization,
            ("hlsPackage" .=) <$> _uoeHlsPackage
          ]
      )

instance ToPath UpdateOriginEndpoint where
  toPath UpdateOriginEndpoint' {..} =
    mconcat ["/origin_endpoints/", toBS _uoeId]

instance ToQuery UpdateOriginEndpoint where
  toQuery = const mempty

-- | /See:/ 'updateOriginEndpointResponse' smart constructor.
data UpdateOriginEndpointResponse = UpdateOriginEndpointResponse'
  { _uoerrsDashPackage ::
      !( Maybe
           DashPackage
       ),
    _uoerrsStartoverWindowSeconds ::
      !(Maybe Int),
    _uoerrsOrigination ::
      !( Maybe
           Origination
       ),
    _uoerrsChannelId ::
      !(Maybe Text),
    _uoerrsCmafPackage ::
      !( Maybe
           CmafPackage
       ),
    _uoerrsManifestName ::
      !(Maybe Text),
    _uoerrsARN ::
      !(Maybe Text),
    _uoerrsId ::
      !(Maybe Text),
    _uoerrsWhitelist ::
      !( Maybe
           [Text]
       ),
    _uoerrsMssPackage ::
      !( Maybe
           MssPackage
       ),
    _uoerrsTags ::
      !( Maybe
           ( Map
               Text
               Text
           )
       ),
    _uoerrsDescription ::
      !(Maybe Text),
    _uoerrsTimeDelaySeconds ::
      !(Maybe Int),
    _uoerrsAuthorization ::
      !( Maybe
           Authorization
       ),
    _uoerrsURL ::
      !(Maybe Text),
    _uoerrsHlsPackage ::
      !( Maybe
           HlsPackage
       ),
    _uoerrsResponseStatus ::
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

-- | Creates a value of 'UpdateOriginEndpointResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uoerrsDashPackage' - Undocumented member.
--
-- * 'uoerrsStartoverWindowSeconds' - Maximum duration (seconds) of content to retain for startover playback. If not specified, startover playback will be disabled for the OriginEndpoint.
--
-- * 'uoerrsOrigination' - Control whether origination of video is allowed for this OriginEndpoint. If set to ALLOW, the OriginEndpoint may by requested, pursuant to any other form of access control. If set to DENY, the OriginEndpoint may not be requested. This can be helpful for Live to VOD harvesting, or for temporarily disabling origination
--
-- * 'uoerrsChannelId' - The ID of the Channel the OriginEndpoint is associated with.
--
-- * 'uoerrsCmafPackage' - Undocumented member.
--
-- * 'uoerrsManifestName' - A short string appended to the end of the OriginEndpoint URL.
--
-- * 'uoerrsARN' - The Amazon Resource Name (ARN) assigned to the OriginEndpoint.
--
-- * 'uoerrsId' - The ID of the OriginEndpoint.
--
-- * 'uoerrsWhitelist' - A list of source IP CIDR blocks that will be allowed to access the OriginEndpoint.
--
-- * 'uoerrsMssPackage' - Undocumented member.
--
-- * 'uoerrsTags' - Undocumented member.
--
-- * 'uoerrsDescription' - A short text description of the OriginEndpoint.
--
-- * 'uoerrsTimeDelaySeconds' - Amount of delay (seconds) to enforce on the playback of live content. If not specified, there will be no time delay in effect for the OriginEndpoint.
--
-- * 'uoerrsAuthorization' - Undocumented member.
--
-- * 'uoerrsURL' - The URL of the packaged OriginEndpoint for consumption.
--
-- * 'uoerrsHlsPackage' - Undocumented member.
--
-- * 'uoerrsResponseStatus' - -- | The response status code.
updateOriginEndpointResponse ::
  -- | 'uoerrsResponseStatus'
  Int ->
  UpdateOriginEndpointResponse
updateOriginEndpointResponse pResponseStatus_ =
  UpdateOriginEndpointResponse'
    { _uoerrsDashPackage =
        Nothing,
      _uoerrsStartoverWindowSeconds = Nothing,
      _uoerrsOrigination = Nothing,
      _uoerrsChannelId = Nothing,
      _uoerrsCmafPackage = Nothing,
      _uoerrsManifestName = Nothing,
      _uoerrsARN = Nothing,
      _uoerrsId = Nothing,
      _uoerrsWhitelist = Nothing,
      _uoerrsMssPackage = Nothing,
      _uoerrsTags = Nothing,
      _uoerrsDescription = Nothing,
      _uoerrsTimeDelaySeconds = Nothing,
      _uoerrsAuthorization = Nothing,
      _uoerrsURL = Nothing,
      _uoerrsHlsPackage = Nothing,
      _uoerrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
uoerrsDashPackage :: Lens' UpdateOriginEndpointResponse (Maybe DashPackage)
uoerrsDashPackage = lens _uoerrsDashPackage (\s a -> s {_uoerrsDashPackage = a})

-- | Maximum duration (seconds) of content to retain for startover playback. If not specified, startover playback will be disabled for the OriginEndpoint.
uoerrsStartoverWindowSeconds :: Lens' UpdateOriginEndpointResponse (Maybe Int)
uoerrsStartoverWindowSeconds = lens _uoerrsStartoverWindowSeconds (\s a -> s {_uoerrsStartoverWindowSeconds = a})

-- | Control whether origination of video is allowed for this OriginEndpoint. If set to ALLOW, the OriginEndpoint may by requested, pursuant to any other form of access control. If set to DENY, the OriginEndpoint may not be requested. This can be helpful for Live to VOD harvesting, or for temporarily disabling origination
uoerrsOrigination :: Lens' UpdateOriginEndpointResponse (Maybe Origination)
uoerrsOrigination = lens _uoerrsOrigination (\s a -> s {_uoerrsOrigination = a})

-- | The ID of the Channel the OriginEndpoint is associated with.
uoerrsChannelId :: Lens' UpdateOriginEndpointResponse (Maybe Text)
uoerrsChannelId = lens _uoerrsChannelId (\s a -> s {_uoerrsChannelId = a})

-- | Undocumented member.
uoerrsCmafPackage :: Lens' UpdateOriginEndpointResponse (Maybe CmafPackage)
uoerrsCmafPackage = lens _uoerrsCmafPackage (\s a -> s {_uoerrsCmafPackage = a})

-- | A short string appended to the end of the OriginEndpoint URL.
uoerrsManifestName :: Lens' UpdateOriginEndpointResponse (Maybe Text)
uoerrsManifestName = lens _uoerrsManifestName (\s a -> s {_uoerrsManifestName = a})

-- | The Amazon Resource Name (ARN) assigned to the OriginEndpoint.
uoerrsARN :: Lens' UpdateOriginEndpointResponse (Maybe Text)
uoerrsARN = lens _uoerrsARN (\s a -> s {_uoerrsARN = a})

-- | The ID of the OriginEndpoint.
uoerrsId :: Lens' UpdateOriginEndpointResponse (Maybe Text)
uoerrsId = lens _uoerrsId (\s a -> s {_uoerrsId = a})

-- | A list of source IP CIDR blocks that will be allowed to access the OriginEndpoint.
uoerrsWhitelist :: Lens' UpdateOriginEndpointResponse [Text]
uoerrsWhitelist = lens _uoerrsWhitelist (\s a -> s {_uoerrsWhitelist = a}) . _Default . _Coerce

-- | Undocumented member.
uoerrsMssPackage :: Lens' UpdateOriginEndpointResponse (Maybe MssPackage)
uoerrsMssPackage = lens _uoerrsMssPackage (\s a -> s {_uoerrsMssPackage = a})

-- | Undocumented member.
uoerrsTags :: Lens' UpdateOriginEndpointResponse (HashMap Text Text)
uoerrsTags = lens _uoerrsTags (\s a -> s {_uoerrsTags = a}) . _Default . _Map

-- | A short text description of the OriginEndpoint.
uoerrsDescription :: Lens' UpdateOriginEndpointResponse (Maybe Text)
uoerrsDescription = lens _uoerrsDescription (\s a -> s {_uoerrsDescription = a})

-- | Amount of delay (seconds) to enforce on the playback of live content. If not specified, there will be no time delay in effect for the OriginEndpoint.
uoerrsTimeDelaySeconds :: Lens' UpdateOriginEndpointResponse (Maybe Int)
uoerrsTimeDelaySeconds = lens _uoerrsTimeDelaySeconds (\s a -> s {_uoerrsTimeDelaySeconds = a})

-- | Undocumented member.
uoerrsAuthorization :: Lens' UpdateOriginEndpointResponse (Maybe Authorization)
uoerrsAuthorization = lens _uoerrsAuthorization (\s a -> s {_uoerrsAuthorization = a})

-- | The URL of the packaged OriginEndpoint for consumption.
uoerrsURL :: Lens' UpdateOriginEndpointResponse (Maybe Text)
uoerrsURL = lens _uoerrsURL (\s a -> s {_uoerrsURL = a})

-- | Undocumented member.
uoerrsHlsPackage :: Lens' UpdateOriginEndpointResponse (Maybe HlsPackage)
uoerrsHlsPackage = lens _uoerrsHlsPackage (\s a -> s {_uoerrsHlsPackage = a})

-- | -- | The response status code.
uoerrsResponseStatus :: Lens' UpdateOriginEndpointResponse Int
uoerrsResponseStatus = lens _uoerrsResponseStatus (\s a -> s {_uoerrsResponseStatus = a})

instance NFData UpdateOriginEndpointResponse
