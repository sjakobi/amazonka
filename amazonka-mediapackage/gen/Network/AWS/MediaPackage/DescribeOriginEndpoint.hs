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
-- Module      : Network.AWS.MediaPackage.DescribeOriginEndpoint
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets details about an existing OriginEndpoint.
module Network.AWS.MediaPackage.DescribeOriginEndpoint
  ( -- * Creating a Request
    describeOriginEndpoint,
    DescribeOriginEndpoint,

    -- * Request Lenses
    dId,

    -- * Destructuring the Response
    describeOriginEndpointResponse,
    DescribeOriginEndpointResponse,

    -- * Response Lenses
    doerrsDashPackage,
    doerrsStartoverWindowSeconds,
    doerrsOrigination,
    doerrsChannelId,
    doerrsCmafPackage,
    doerrsManifestName,
    doerrsARN,
    doerrsId,
    doerrsWhitelist,
    doerrsMssPackage,
    doerrsTags,
    doerrsDescription,
    doerrsTimeDelaySeconds,
    doerrsAuthorization,
    doerrsURL,
    doerrsHlsPackage,
    doerrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MediaPackage.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeOriginEndpoint' smart constructor.
newtype DescribeOriginEndpoint = DescribeOriginEndpoint'
  { _dId ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeOriginEndpoint' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dId' - The ID of the OriginEndpoint.
describeOriginEndpoint ::
  -- | 'dId'
  Text ->
  DescribeOriginEndpoint
describeOriginEndpoint pId_ =
  DescribeOriginEndpoint' {_dId = pId_}

-- | The ID of the OriginEndpoint.
dId :: Lens' DescribeOriginEndpoint Text
dId = lens _dId (\s a -> s {_dId = a})

instance AWSRequest DescribeOriginEndpoint where
  type
    Rs DescribeOriginEndpoint =
      DescribeOriginEndpointResponse
  request = get mediaPackage
  response =
    receiveJSON
      ( \s h x ->
          DescribeOriginEndpointResponse'
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

instance Hashable DescribeOriginEndpoint

instance NFData DescribeOriginEndpoint

instance ToHeaders DescribeOriginEndpoint where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath DescribeOriginEndpoint where
  toPath DescribeOriginEndpoint' {..} =
    mconcat ["/origin_endpoints/", toBS _dId]

instance ToQuery DescribeOriginEndpoint where
  toQuery = const mempty

-- | /See:/ 'describeOriginEndpointResponse' smart constructor.
data DescribeOriginEndpointResponse = DescribeOriginEndpointResponse'
  { _doerrsDashPackage ::
      !( Maybe
           DashPackage
       ),
    _doerrsStartoverWindowSeconds ::
      !( Maybe
           Int
       ),
    _doerrsOrigination ::
      !( Maybe
           Origination
       ),
    _doerrsChannelId ::
      !( Maybe
           Text
       ),
    _doerrsCmafPackage ::
      !( Maybe
           CmafPackage
       ),
    _doerrsManifestName ::
      !( Maybe
           Text
       ),
    _doerrsARN ::
      !( Maybe
           Text
       ),
    _doerrsId ::
      !( Maybe
           Text
       ),
    _doerrsWhitelist ::
      !( Maybe
           [Text]
       ),
    _doerrsMssPackage ::
      !( Maybe
           MssPackage
       ),
    _doerrsTags ::
      !( Maybe
           ( Map
               Text
               Text
           )
       ),
    _doerrsDescription ::
      !( Maybe
           Text
       ),
    _doerrsTimeDelaySeconds ::
      !( Maybe
           Int
       ),
    _doerrsAuthorization ::
      !( Maybe
           Authorization
       ),
    _doerrsURL ::
      !( Maybe
           Text
       ),
    _doerrsHlsPackage ::
      !( Maybe
           HlsPackage
       ),
    _doerrsResponseStatus ::
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

-- | Creates a value of 'DescribeOriginEndpointResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'doerrsDashPackage' - Undocumented member.
--
-- * 'doerrsStartoverWindowSeconds' - Maximum duration (seconds) of content to retain for startover playback. If not specified, startover playback will be disabled for the OriginEndpoint.
--
-- * 'doerrsOrigination' - Control whether origination of video is allowed for this OriginEndpoint. If set to ALLOW, the OriginEndpoint may by requested, pursuant to any other form of access control. If set to DENY, the OriginEndpoint may not be requested. This can be helpful for Live to VOD harvesting, or for temporarily disabling origination
--
-- * 'doerrsChannelId' - The ID of the Channel the OriginEndpoint is associated with.
--
-- * 'doerrsCmafPackage' - Undocumented member.
--
-- * 'doerrsManifestName' - A short string appended to the end of the OriginEndpoint URL.
--
-- * 'doerrsARN' - The Amazon Resource Name (ARN) assigned to the OriginEndpoint.
--
-- * 'doerrsId' - The ID of the OriginEndpoint.
--
-- * 'doerrsWhitelist' - A list of source IP CIDR blocks that will be allowed to access the OriginEndpoint.
--
-- * 'doerrsMssPackage' - Undocumented member.
--
-- * 'doerrsTags' - Undocumented member.
--
-- * 'doerrsDescription' - A short text description of the OriginEndpoint.
--
-- * 'doerrsTimeDelaySeconds' - Amount of delay (seconds) to enforce on the playback of live content. If not specified, there will be no time delay in effect for the OriginEndpoint.
--
-- * 'doerrsAuthorization' - Undocumented member.
--
-- * 'doerrsURL' - The URL of the packaged OriginEndpoint for consumption.
--
-- * 'doerrsHlsPackage' - Undocumented member.
--
-- * 'doerrsResponseStatus' - -- | The response status code.
describeOriginEndpointResponse ::
  -- | 'doerrsResponseStatus'
  Int ->
  DescribeOriginEndpointResponse
describeOriginEndpointResponse pResponseStatus_ =
  DescribeOriginEndpointResponse'
    { _doerrsDashPackage =
        Nothing,
      _doerrsStartoverWindowSeconds = Nothing,
      _doerrsOrigination = Nothing,
      _doerrsChannelId = Nothing,
      _doerrsCmafPackage = Nothing,
      _doerrsManifestName = Nothing,
      _doerrsARN = Nothing,
      _doerrsId = Nothing,
      _doerrsWhitelist = Nothing,
      _doerrsMssPackage = Nothing,
      _doerrsTags = Nothing,
      _doerrsDescription = Nothing,
      _doerrsTimeDelaySeconds = Nothing,
      _doerrsAuthorization = Nothing,
      _doerrsURL = Nothing,
      _doerrsHlsPackage = Nothing,
      _doerrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
doerrsDashPackage :: Lens' DescribeOriginEndpointResponse (Maybe DashPackage)
doerrsDashPackage = lens _doerrsDashPackage (\s a -> s {_doerrsDashPackage = a})

-- | Maximum duration (seconds) of content to retain for startover playback. If not specified, startover playback will be disabled for the OriginEndpoint.
doerrsStartoverWindowSeconds :: Lens' DescribeOriginEndpointResponse (Maybe Int)
doerrsStartoverWindowSeconds = lens _doerrsStartoverWindowSeconds (\s a -> s {_doerrsStartoverWindowSeconds = a})

-- | Control whether origination of video is allowed for this OriginEndpoint. If set to ALLOW, the OriginEndpoint may by requested, pursuant to any other form of access control. If set to DENY, the OriginEndpoint may not be requested. This can be helpful for Live to VOD harvesting, or for temporarily disabling origination
doerrsOrigination :: Lens' DescribeOriginEndpointResponse (Maybe Origination)
doerrsOrigination = lens _doerrsOrigination (\s a -> s {_doerrsOrigination = a})

-- | The ID of the Channel the OriginEndpoint is associated with.
doerrsChannelId :: Lens' DescribeOriginEndpointResponse (Maybe Text)
doerrsChannelId = lens _doerrsChannelId (\s a -> s {_doerrsChannelId = a})

-- | Undocumented member.
doerrsCmafPackage :: Lens' DescribeOriginEndpointResponse (Maybe CmafPackage)
doerrsCmafPackage = lens _doerrsCmafPackage (\s a -> s {_doerrsCmafPackage = a})

-- | A short string appended to the end of the OriginEndpoint URL.
doerrsManifestName :: Lens' DescribeOriginEndpointResponse (Maybe Text)
doerrsManifestName = lens _doerrsManifestName (\s a -> s {_doerrsManifestName = a})

-- | The Amazon Resource Name (ARN) assigned to the OriginEndpoint.
doerrsARN :: Lens' DescribeOriginEndpointResponse (Maybe Text)
doerrsARN = lens _doerrsARN (\s a -> s {_doerrsARN = a})

-- | The ID of the OriginEndpoint.
doerrsId :: Lens' DescribeOriginEndpointResponse (Maybe Text)
doerrsId = lens _doerrsId (\s a -> s {_doerrsId = a})

-- | A list of source IP CIDR blocks that will be allowed to access the OriginEndpoint.
doerrsWhitelist :: Lens' DescribeOriginEndpointResponse [Text]
doerrsWhitelist = lens _doerrsWhitelist (\s a -> s {_doerrsWhitelist = a}) . _Default . _Coerce

-- | Undocumented member.
doerrsMssPackage :: Lens' DescribeOriginEndpointResponse (Maybe MssPackage)
doerrsMssPackage = lens _doerrsMssPackage (\s a -> s {_doerrsMssPackage = a})

-- | Undocumented member.
doerrsTags :: Lens' DescribeOriginEndpointResponse (HashMap Text Text)
doerrsTags = lens _doerrsTags (\s a -> s {_doerrsTags = a}) . _Default . _Map

-- | A short text description of the OriginEndpoint.
doerrsDescription :: Lens' DescribeOriginEndpointResponse (Maybe Text)
doerrsDescription = lens _doerrsDescription (\s a -> s {_doerrsDescription = a})

-- | Amount of delay (seconds) to enforce on the playback of live content. If not specified, there will be no time delay in effect for the OriginEndpoint.
doerrsTimeDelaySeconds :: Lens' DescribeOriginEndpointResponse (Maybe Int)
doerrsTimeDelaySeconds = lens _doerrsTimeDelaySeconds (\s a -> s {_doerrsTimeDelaySeconds = a})

-- | Undocumented member.
doerrsAuthorization :: Lens' DescribeOriginEndpointResponse (Maybe Authorization)
doerrsAuthorization = lens _doerrsAuthorization (\s a -> s {_doerrsAuthorization = a})

-- | The URL of the packaged OriginEndpoint for consumption.
doerrsURL :: Lens' DescribeOriginEndpointResponse (Maybe Text)
doerrsURL = lens _doerrsURL (\s a -> s {_doerrsURL = a})

-- | Undocumented member.
doerrsHlsPackage :: Lens' DescribeOriginEndpointResponse (Maybe HlsPackage)
doerrsHlsPackage = lens _doerrsHlsPackage (\s a -> s {_doerrsHlsPackage = a})

-- | -- | The response status code.
doerrsResponseStatus :: Lens' DescribeOriginEndpointResponse Int
doerrsResponseStatus = lens _doerrsResponseStatus (\s a -> s {_doerrsResponseStatus = a})

instance NFData DescribeOriginEndpointResponse
