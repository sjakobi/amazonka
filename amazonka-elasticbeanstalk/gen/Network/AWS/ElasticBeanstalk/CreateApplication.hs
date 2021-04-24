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
-- Module      : Network.AWS.ElasticBeanstalk.CreateApplication
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an application that has one configuration template named @default@ and no application versions.
module Network.AWS.ElasticBeanstalk.CreateApplication
  ( -- * Creating a Request
    createApplication,
    CreateApplication,

    -- * Request Lenses
    caTags,
    caResourceLifecycleConfig,
    caDescription,
    caApplicationName,

    -- * Destructuring the Response
    applicationDescriptionMessage,
    ApplicationDescriptionMessage,

    -- * Response Lenses
    admApplication,
  )
where

import Network.AWS.ElasticBeanstalk.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Request to create an application.
--
--
--
-- /See:/ 'createApplication' smart constructor.
data CreateApplication = CreateApplication'
  { _caTags ::
      !(Maybe [Tag]),
    _caResourceLifecycleConfig ::
      !( Maybe
           ApplicationResourceLifecycleConfig
       ),
    _caDescription :: !(Maybe Text),
    _caApplicationName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateApplication' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'caTags' - Specifies the tags applied to the application. Elastic Beanstalk applies these tags only to the application. Environments that you create in the application don't inherit the tags.
--
-- * 'caResourceLifecycleConfig' - Specifies an application resource lifecycle configuration to prevent your application from accumulating too many versions.
--
-- * 'caDescription' - Your description of the application.
--
-- * 'caApplicationName' - The name of the application. Must be unique within your account.
createApplication ::
  -- | 'caApplicationName'
  Text ->
  CreateApplication
createApplication pApplicationName_ =
  CreateApplication'
    { _caTags = Nothing,
      _caResourceLifecycleConfig = Nothing,
      _caDescription = Nothing,
      _caApplicationName = pApplicationName_
    }

-- | Specifies the tags applied to the application. Elastic Beanstalk applies these tags only to the application. Environments that you create in the application don't inherit the tags.
caTags :: Lens' CreateApplication [Tag]
caTags = lens _caTags (\s a -> s {_caTags = a}) . _Default . _Coerce

-- | Specifies an application resource lifecycle configuration to prevent your application from accumulating too many versions.
caResourceLifecycleConfig :: Lens' CreateApplication (Maybe ApplicationResourceLifecycleConfig)
caResourceLifecycleConfig = lens _caResourceLifecycleConfig (\s a -> s {_caResourceLifecycleConfig = a})

-- | Your description of the application.
caDescription :: Lens' CreateApplication (Maybe Text)
caDescription = lens _caDescription (\s a -> s {_caDescription = a})

-- | The name of the application. Must be unique within your account.
caApplicationName :: Lens' CreateApplication Text
caApplicationName = lens _caApplicationName (\s a -> s {_caApplicationName = a})

instance AWSRequest CreateApplication where
  type
    Rs CreateApplication =
      ApplicationDescriptionMessage
  request = postQuery elasticBeanstalk
  response =
    receiveXMLWrapper
      "CreateApplicationResult"
      (\s h x -> parseXML x)

instance Hashable CreateApplication

instance NFData CreateApplication

instance ToHeaders CreateApplication where
  toHeaders = const mempty

instance ToPath CreateApplication where
  toPath = const "/"

instance ToQuery CreateApplication where
  toQuery CreateApplication' {..} =
    mconcat
      [ "Action" =: ("CreateApplication" :: ByteString),
        "Version" =: ("2010-12-01" :: ByteString),
        "Tags" =: toQuery (toQueryList "member" <$> _caTags),
        "ResourceLifecycleConfig"
          =: _caResourceLifecycleConfig,
        "Description" =: _caDescription,
        "ApplicationName" =: _caApplicationName
      ]
