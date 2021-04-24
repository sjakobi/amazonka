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
-- Module      : Network.AWS.CodeDeploy.CreateApplication
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an application.
module Network.AWS.CodeDeploy.CreateApplication
  ( -- * Creating a Request
    createApplication,
    CreateApplication,

    -- * Request Lenses
    caTags,
    caComputePlatform,
    caApplicationName,

    -- * Destructuring the Response
    createApplicationResponse,
    CreateApplicationResponse,

    -- * Response Lenses
    carrsApplicationId,
    carrsResponseStatus,
  )
where

import Network.AWS.CodeDeploy.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the input of a @CreateApplication@ operation.
--
--
--
-- /See:/ 'createApplication' smart constructor.
data CreateApplication = CreateApplication'
  { _caTags ::
      !(Maybe [Tag]),
    _caComputePlatform ::
      !(Maybe ComputePlatform),
    _caApplicationName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateApplication' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'caTags' - The metadata that you apply to CodeDeploy applications to help you organize and categorize them. Each tag consists of a key and an optional value, both of which you define.
--
-- * 'caComputePlatform' - The destination platform type for the deployment (@Lambda@ , @Server@ , or @ECS@ ).
--
-- * 'caApplicationName' - The name of the application. This name must be unique with the applicable IAM user or AWS account.
createApplication ::
  -- | 'caApplicationName'
  Text ->
  CreateApplication
createApplication pApplicationName_ =
  CreateApplication'
    { _caTags = Nothing,
      _caComputePlatform = Nothing,
      _caApplicationName = pApplicationName_
    }

-- | The metadata that you apply to CodeDeploy applications to help you organize and categorize them. Each tag consists of a key and an optional value, both of which you define.
caTags :: Lens' CreateApplication [Tag]
caTags = lens _caTags (\s a -> s {_caTags = a}) . _Default . _Coerce

-- | The destination platform type for the deployment (@Lambda@ , @Server@ , or @ECS@ ).
caComputePlatform :: Lens' CreateApplication (Maybe ComputePlatform)
caComputePlatform = lens _caComputePlatform (\s a -> s {_caComputePlatform = a})

-- | The name of the application. This name must be unique with the applicable IAM user or AWS account.
caApplicationName :: Lens' CreateApplication Text
caApplicationName = lens _caApplicationName (\s a -> s {_caApplicationName = a})

instance AWSRequest CreateApplication where
  type Rs CreateApplication = CreateApplicationResponse
  request = postJSON codeDeploy
  response =
    receiveJSON
      ( \s h x ->
          CreateApplicationResponse'
            <$> (x .?> "applicationId") <*> (pure (fromEnum s))
      )

instance Hashable CreateApplication

instance NFData CreateApplication

instance ToHeaders CreateApplication where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "CodeDeploy_20141006.CreateApplication" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateApplication where
  toJSON CreateApplication' {..} =
    object
      ( catMaybes
          [ ("tags" .=) <$> _caTags,
            ("computePlatform" .=) <$> _caComputePlatform,
            Just ("applicationName" .= _caApplicationName)
          ]
      )

instance ToPath CreateApplication where
  toPath = const "/"

instance ToQuery CreateApplication where
  toQuery = const mempty

-- | Represents the output of a @CreateApplication@ operation.
--
--
--
-- /See:/ 'createApplicationResponse' smart constructor.
data CreateApplicationResponse = CreateApplicationResponse'
  { _carrsApplicationId ::
      !(Maybe Text),
    _carrsResponseStatus ::
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

-- | Creates a value of 'CreateApplicationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'carrsApplicationId' - A unique application ID.
--
-- * 'carrsResponseStatus' - -- | The response status code.
createApplicationResponse ::
  -- | 'carrsResponseStatus'
  Int ->
  CreateApplicationResponse
createApplicationResponse pResponseStatus_ =
  CreateApplicationResponse'
    { _carrsApplicationId =
        Nothing,
      _carrsResponseStatus = pResponseStatus_
    }

-- | A unique application ID.
carrsApplicationId :: Lens' CreateApplicationResponse (Maybe Text)
carrsApplicationId = lens _carrsApplicationId (\s a -> s {_carrsApplicationId = a})

-- | -- | The response status code.
carrsResponseStatus :: Lens' CreateApplicationResponse Int
carrsResponseStatus = lens _carrsResponseStatus (\s a -> s {_carrsResponseStatus = a})

instance NFData CreateApplicationResponse
