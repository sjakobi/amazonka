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
-- Module      : Network.AWS.SMS.CreateApp
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an application. An application consists of one or more server groups. Each server group contain one or more servers.
module Network.AWS.SMS.CreateApp
  ( -- * Creating a Request
    createApp,
    CreateApp,

    -- * Request Lenses
    caRoleName,
    caName,
    caServerGroups,
    caTags,
    caDescription,
    caClientToken,

    -- * Destructuring the Response
    createAppResponse,
    CreateAppResponse,

    -- * Response Lenses
    carrsAppSummary,
    carrsServerGroups,
    carrsTags,
    carrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SMS.Types

-- | /See:/ 'createApp' smart constructor.
data CreateApp = CreateApp'
  { _caRoleName ::
      !(Maybe Text),
    _caName :: !(Maybe Text),
    _caServerGroups :: !(Maybe [ServerGroup]),
    _caTags :: !(Maybe [Tag]),
    _caDescription :: !(Maybe Text),
    _caClientToken :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateApp' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'caRoleName' - The name of the service role in the customer's account to be used by AWS SMS.
--
-- * 'caName' - The name of the new application.
--
-- * 'caServerGroups' - The server groups to include in the application.
--
-- * 'caTags' - The tags to be associated with the application.
--
-- * 'caDescription' - The description of the new application
--
-- * 'caClientToken' - A unique, case-sensitive identifier that you provide to ensure the idempotency of application creation.
createApp ::
  CreateApp
createApp =
  CreateApp'
    { _caRoleName = Nothing,
      _caName = Nothing,
      _caServerGroups = Nothing,
      _caTags = Nothing,
      _caDescription = Nothing,
      _caClientToken = Nothing
    }

-- | The name of the service role in the customer's account to be used by AWS SMS.
caRoleName :: Lens' CreateApp (Maybe Text)
caRoleName = lens _caRoleName (\s a -> s {_caRoleName = a})

-- | The name of the new application.
caName :: Lens' CreateApp (Maybe Text)
caName = lens _caName (\s a -> s {_caName = a})

-- | The server groups to include in the application.
caServerGroups :: Lens' CreateApp [ServerGroup]
caServerGroups = lens _caServerGroups (\s a -> s {_caServerGroups = a}) . _Default . _Coerce

-- | The tags to be associated with the application.
caTags :: Lens' CreateApp [Tag]
caTags = lens _caTags (\s a -> s {_caTags = a}) . _Default . _Coerce

-- | The description of the new application
caDescription :: Lens' CreateApp (Maybe Text)
caDescription = lens _caDescription (\s a -> s {_caDescription = a})

-- | A unique, case-sensitive identifier that you provide to ensure the idempotency of application creation.
caClientToken :: Lens' CreateApp (Maybe Text)
caClientToken = lens _caClientToken (\s a -> s {_caClientToken = a})

instance AWSRequest CreateApp where
  type Rs CreateApp = CreateAppResponse
  request = postJSON sms
  response =
    receiveJSON
      ( \s h x ->
          CreateAppResponse'
            <$> (x .?> "appSummary")
            <*> (x .?> "serverGroups" .!@ mempty)
            <*> (x .?> "tags" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable CreateApp

instance NFData CreateApp

instance ToHeaders CreateApp where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSServerMigrationService_V2016_10_24.CreateApp" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateApp where
  toJSON CreateApp' {..} =
    object
      ( catMaybes
          [ ("roleName" .=) <$> _caRoleName,
            ("name" .=) <$> _caName,
            ("serverGroups" .=) <$> _caServerGroups,
            ("tags" .=) <$> _caTags,
            ("description" .=) <$> _caDescription,
            ("clientToken" .=) <$> _caClientToken
          ]
      )

instance ToPath CreateApp where
  toPath = const "/"

instance ToQuery CreateApp where
  toQuery = const mempty

-- | /See:/ 'createAppResponse' smart constructor.
data CreateAppResponse = CreateAppResponse'
  { _carrsAppSummary ::
      !(Maybe AppSummary),
    _carrsServerGroups ::
      !(Maybe [ServerGroup]),
    _carrsTags :: !(Maybe [Tag]),
    _carrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateAppResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'carrsAppSummary' - A summary description of the application.
--
-- * 'carrsServerGroups' - The server groups included in the application.
--
-- * 'carrsTags' - The tags associated with the application.
--
-- * 'carrsResponseStatus' - -- | The response status code.
createAppResponse ::
  -- | 'carrsResponseStatus'
  Int ->
  CreateAppResponse
createAppResponse pResponseStatus_ =
  CreateAppResponse'
    { _carrsAppSummary = Nothing,
      _carrsServerGroups = Nothing,
      _carrsTags = Nothing,
      _carrsResponseStatus = pResponseStatus_
    }

-- | A summary description of the application.
carrsAppSummary :: Lens' CreateAppResponse (Maybe AppSummary)
carrsAppSummary = lens _carrsAppSummary (\s a -> s {_carrsAppSummary = a})

-- | The server groups included in the application.
carrsServerGroups :: Lens' CreateAppResponse [ServerGroup]
carrsServerGroups = lens _carrsServerGroups (\s a -> s {_carrsServerGroups = a}) . _Default . _Coerce

-- | The tags associated with the application.
carrsTags :: Lens' CreateAppResponse [Tag]
carrsTags = lens _carrsTags (\s a -> s {_carrsTags = a}) . _Default . _Coerce

-- | -- | The response status code.
carrsResponseStatus :: Lens' CreateAppResponse Int
carrsResponseStatus = lens _carrsResponseStatus (\s a -> s {_carrsResponseStatus = a})

instance NFData CreateAppResponse
