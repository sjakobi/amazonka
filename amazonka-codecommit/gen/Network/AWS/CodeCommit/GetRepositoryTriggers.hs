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
-- Module      : Network.AWS.CodeCommit.GetRepositoryTriggers
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about triggers configured for a repository.
module Network.AWS.CodeCommit.GetRepositoryTriggers
  ( -- * Creating a Request
    getRepositoryTriggers,
    GetRepositoryTriggers,

    -- * Request Lenses
    grtRepositoryName,

    -- * Destructuring the Response
    getRepositoryTriggersResponse,
    GetRepositoryTriggersResponse,

    -- * Response Lenses
    grtrrsTriggers,
    grtrrsConfigurationId,
    grtrrsResponseStatus,
  )
where

import Network.AWS.CodeCommit.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the input of a get repository triggers operation.
--
--
--
-- /See:/ 'getRepositoryTriggers' smart constructor.
newtype GetRepositoryTriggers = GetRepositoryTriggers'
  { _grtRepositoryName ::
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

-- | Creates a value of 'GetRepositoryTriggers' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grtRepositoryName' - The name of the repository for which the trigger is configured.
getRepositoryTriggers ::
  -- | 'grtRepositoryName'
  Text ->
  GetRepositoryTriggers
getRepositoryTriggers pRepositoryName_ =
  GetRepositoryTriggers'
    { _grtRepositoryName =
        pRepositoryName_
    }

-- | The name of the repository for which the trigger is configured.
grtRepositoryName :: Lens' GetRepositoryTriggers Text
grtRepositoryName = lens _grtRepositoryName (\s a -> s {_grtRepositoryName = a})

instance AWSRequest GetRepositoryTriggers where
  type
    Rs GetRepositoryTriggers =
      GetRepositoryTriggersResponse
  request = postJSON codeCommit
  response =
    receiveJSON
      ( \s h x ->
          GetRepositoryTriggersResponse'
            <$> (x .?> "triggers" .!@ mempty)
            <*> (x .?> "configurationId")
            <*> (pure (fromEnum s))
      )

instance Hashable GetRepositoryTriggers

instance NFData GetRepositoryTriggers

instance ToHeaders GetRepositoryTriggers where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "CodeCommit_20150413.GetRepositoryTriggers" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetRepositoryTriggers where
  toJSON GetRepositoryTriggers' {..} =
    object
      ( catMaybes
          [Just ("repositoryName" .= _grtRepositoryName)]
      )

instance ToPath GetRepositoryTriggers where
  toPath = const "/"

instance ToQuery GetRepositoryTriggers where
  toQuery = const mempty

-- | Represents the output of a get repository triggers operation.
--
--
--
-- /See:/ 'getRepositoryTriggersResponse' smart constructor.
data GetRepositoryTriggersResponse = GetRepositoryTriggersResponse'
  { _grtrrsTriggers ::
      !( Maybe
           [RepositoryTrigger]
       ),
    _grtrrsConfigurationId ::
      !( Maybe
           Text
       ),
    _grtrrsResponseStatus ::
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

-- | Creates a value of 'GetRepositoryTriggersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grtrrsTriggers' - The JSON block of configuration information for each trigger.
--
-- * 'grtrrsConfigurationId' - The system-generated unique ID for the trigger.
--
-- * 'grtrrsResponseStatus' - -- | The response status code.
getRepositoryTriggersResponse ::
  -- | 'grtrrsResponseStatus'
  Int ->
  GetRepositoryTriggersResponse
getRepositoryTriggersResponse pResponseStatus_ =
  GetRepositoryTriggersResponse'
    { _grtrrsTriggers =
        Nothing,
      _grtrrsConfigurationId = Nothing,
      _grtrrsResponseStatus = pResponseStatus_
    }

-- | The JSON block of configuration information for each trigger.
grtrrsTriggers :: Lens' GetRepositoryTriggersResponse [RepositoryTrigger]
grtrrsTriggers = lens _grtrrsTriggers (\s a -> s {_grtrrsTriggers = a}) . _Default . _Coerce

-- | The system-generated unique ID for the trigger.
grtrrsConfigurationId :: Lens' GetRepositoryTriggersResponse (Maybe Text)
grtrrsConfigurationId = lens _grtrrsConfigurationId (\s a -> s {_grtrrsConfigurationId = a})

-- | -- | The response status code.
grtrrsResponseStatus :: Lens' GetRepositoryTriggersResponse Int
grtrrsResponseStatus = lens _grtrrsResponseStatus (\s a -> s {_grtrrsResponseStatus = a})

instance NFData GetRepositoryTriggersResponse
