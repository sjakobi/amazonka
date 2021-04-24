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
-- Module      : Network.AWS.OpsWorks.GetHostnameSuggestion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a generated host name for the specified layer, based on the current host name theme.
--
--
-- __Required Permissions__ : To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html Managing User Permissions> .
module Network.AWS.OpsWorks.GetHostnameSuggestion
  ( -- * Creating a Request
    getHostnameSuggestion,
    GetHostnameSuggestion,

    -- * Request Lenses
    ghsLayerId,

    -- * Destructuring the Response
    getHostnameSuggestionResponse,
    GetHostnameSuggestionResponse,

    -- * Response Lenses
    ghsrrsHostname,
    ghsrrsLayerId,
    ghsrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.OpsWorks.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getHostnameSuggestion' smart constructor.
newtype GetHostnameSuggestion = GetHostnameSuggestion'
  { _ghsLayerId ::
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

-- | Creates a value of 'GetHostnameSuggestion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ghsLayerId' - The layer ID.
getHostnameSuggestion ::
  -- | 'ghsLayerId'
  Text ->
  GetHostnameSuggestion
getHostnameSuggestion pLayerId_ =
  GetHostnameSuggestion' {_ghsLayerId = pLayerId_}

-- | The layer ID.
ghsLayerId :: Lens' GetHostnameSuggestion Text
ghsLayerId = lens _ghsLayerId (\s a -> s {_ghsLayerId = a})

instance AWSRequest GetHostnameSuggestion where
  type
    Rs GetHostnameSuggestion =
      GetHostnameSuggestionResponse
  request = postJSON opsWorks
  response =
    receiveJSON
      ( \s h x ->
          GetHostnameSuggestionResponse'
            <$> (x .?> "Hostname")
            <*> (x .?> "LayerId")
            <*> (pure (fromEnum s))
      )

instance Hashable GetHostnameSuggestion

instance NFData GetHostnameSuggestion

instance ToHeaders GetHostnameSuggestion where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "OpsWorks_20130218.GetHostnameSuggestion" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetHostnameSuggestion where
  toJSON GetHostnameSuggestion' {..} =
    object
      (catMaybes [Just ("LayerId" .= _ghsLayerId)])

instance ToPath GetHostnameSuggestion where
  toPath = const "/"

instance ToQuery GetHostnameSuggestion where
  toQuery = const mempty

-- | Contains the response to a @GetHostnameSuggestion@ request.
--
--
--
-- /See:/ 'getHostnameSuggestionResponse' smart constructor.
data GetHostnameSuggestionResponse = GetHostnameSuggestionResponse'
  { _ghsrrsHostname ::
      !( Maybe
           Text
       ),
    _ghsrrsLayerId ::
      !( Maybe
           Text
       ),
    _ghsrrsResponseStatus ::
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

-- | Creates a value of 'GetHostnameSuggestionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ghsrrsHostname' - The generated host name.
--
-- * 'ghsrrsLayerId' - The layer ID.
--
-- * 'ghsrrsResponseStatus' - -- | The response status code.
getHostnameSuggestionResponse ::
  -- | 'ghsrrsResponseStatus'
  Int ->
  GetHostnameSuggestionResponse
getHostnameSuggestionResponse pResponseStatus_ =
  GetHostnameSuggestionResponse'
    { _ghsrrsHostname =
        Nothing,
      _ghsrrsLayerId = Nothing,
      _ghsrrsResponseStatus = pResponseStatus_
    }

-- | The generated host name.
ghsrrsHostname :: Lens' GetHostnameSuggestionResponse (Maybe Text)
ghsrrsHostname = lens _ghsrrsHostname (\s a -> s {_ghsrrsHostname = a})

-- | The layer ID.
ghsrrsLayerId :: Lens' GetHostnameSuggestionResponse (Maybe Text)
ghsrrsLayerId = lens _ghsrrsLayerId (\s a -> s {_ghsrrsLayerId = a})

-- | -- | The response status code.
ghsrrsResponseStatus :: Lens' GetHostnameSuggestionResponse Int
ghsrrsResponseStatus = lens _ghsrrsResponseStatus (\s a -> s {_ghsrrsResponseStatus = a})

instance NFData GetHostnameSuggestionResponse
