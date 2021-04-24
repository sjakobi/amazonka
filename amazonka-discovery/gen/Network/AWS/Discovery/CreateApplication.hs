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
-- Module      : Network.AWS.Discovery.CreateApplication
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an application with the given name and description.
module Network.AWS.Discovery.CreateApplication
  ( -- * Creating a Request
    createApplication,
    CreateApplication,

    -- * Request Lenses
    caDescription,
    caName,

    -- * Destructuring the Response
    createApplicationResponse,
    CreateApplicationResponse,

    -- * Response Lenses
    carrsConfigurationId,
    carrsResponseStatus,
  )
where

import Network.AWS.Discovery.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createApplication' smart constructor.
data CreateApplication = CreateApplication'
  { _caDescription ::
      !(Maybe Text),
    _caName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateApplication' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'caDescription' - Description of the application to be created.
--
-- * 'caName' - Name of the application to be created.
createApplication ::
  -- | 'caName'
  Text ->
  CreateApplication
createApplication pName_ =
  CreateApplication'
    { _caDescription = Nothing,
      _caName = pName_
    }

-- | Description of the application to be created.
caDescription :: Lens' CreateApplication (Maybe Text)
caDescription = lens _caDescription (\s a -> s {_caDescription = a})

-- | Name of the application to be created.
caName :: Lens' CreateApplication Text
caName = lens _caName (\s a -> s {_caName = a})

instance AWSRequest CreateApplication where
  type Rs CreateApplication = CreateApplicationResponse
  request = postJSON discovery
  response =
    receiveJSON
      ( \s h x ->
          CreateApplicationResponse'
            <$> (x .?> "configurationId") <*> (pure (fromEnum s))
      )

instance Hashable CreateApplication

instance NFData CreateApplication

instance ToHeaders CreateApplication where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSPoseidonService_V2015_11_01.CreateApplication" ::
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
          [ ("description" .=) <$> _caDescription,
            Just ("name" .= _caName)
          ]
      )

instance ToPath CreateApplication where
  toPath = const "/"

instance ToQuery CreateApplication where
  toQuery = const mempty

-- | /See:/ 'createApplicationResponse' smart constructor.
data CreateApplicationResponse = CreateApplicationResponse'
  { _carrsConfigurationId ::
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
-- * 'carrsConfigurationId' - Configuration ID of an application to be created.
--
-- * 'carrsResponseStatus' - -- | The response status code.
createApplicationResponse ::
  -- | 'carrsResponseStatus'
  Int ->
  CreateApplicationResponse
createApplicationResponse pResponseStatus_ =
  CreateApplicationResponse'
    { _carrsConfigurationId =
        Nothing,
      _carrsResponseStatus = pResponseStatus_
    }

-- | Configuration ID of an application to be created.
carrsConfigurationId :: Lens' CreateApplicationResponse (Maybe Text)
carrsConfigurationId = lens _carrsConfigurationId (\s a -> s {_carrsConfigurationId = a})

-- | -- | The response status code.
carrsResponseStatus :: Lens' CreateApplicationResponse Int
carrsResponseStatus = lens _carrsResponseStatus (\s a -> s {_carrsResponseStatus = a})

instance NFData CreateApplicationResponse
