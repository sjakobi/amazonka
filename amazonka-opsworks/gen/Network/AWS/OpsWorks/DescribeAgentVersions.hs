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
-- Module      : Network.AWS.OpsWorks.DescribeAgentVersions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the available AWS OpsWorks Stacks agent versions. You must specify a stack ID or a configuration manager. @DescribeAgentVersions@ returns a list of available agent versions for the specified stack or configuration manager.
module Network.AWS.OpsWorks.DescribeAgentVersions
  ( -- * Creating a Request
    describeAgentVersions,
    DescribeAgentVersions,

    -- * Request Lenses
    davStackId,
    davConfigurationManager,

    -- * Destructuring the Response
    describeAgentVersionsResponse,
    DescribeAgentVersionsResponse,

    -- * Response Lenses
    davrrsAgentVersions,
    davrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.OpsWorks.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeAgentVersions' smart constructor.
data DescribeAgentVersions = DescribeAgentVersions'
  { _davStackId ::
      !(Maybe Text),
    _davConfigurationManager ::
      !( Maybe
           StackConfigurationManager
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeAgentVersions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'davStackId' - The stack ID.
--
-- * 'davConfigurationManager' - The configuration manager.
describeAgentVersions ::
  DescribeAgentVersions
describeAgentVersions =
  DescribeAgentVersions'
    { _davStackId = Nothing,
      _davConfigurationManager = Nothing
    }

-- | The stack ID.
davStackId :: Lens' DescribeAgentVersions (Maybe Text)
davStackId = lens _davStackId (\s a -> s {_davStackId = a})

-- | The configuration manager.
davConfigurationManager :: Lens' DescribeAgentVersions (Maybe StackConfigurationManager)
davConfigurationManager = lens _davConfigurationManager (\s a -> s {_davConfigurationManager = a})

instance AWSRequest DescribeAgentVersions where
  type
    Rs DescribeAgentVersions =
      DescribeAgentVersionsResponse
  request = postJSON opsWorks
  response =
    receiveJSON
      ( \s h x ->
          DescribeAgentVersionsResponse'
            <$> (x .?> "AgentVersions" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeAgentVersions

instance NFData DescribeAgentVersions

instance ToHeaders DescribeAgentVersions where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "OpsWorks_20130218.DescribeAgentVersions" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeAgentVersions where
  toJSON DescribeAgentVersions' {..} =
    object
      ( catMaybes
          [ ("StackId" .=) <$> _davStackId,
            ("ConfigurationManager" .=)
              <$> _davConfigurationManager
          ]
      )

instance ToPath DescribeAgentVersions where
  toPath = const "/"

instance ToQuery DescribeAgentVersions where
  toQuery = const mempty

-- | Contains the response to a @DescribeAgentVersions@ request.
--
--
--
-- /See:/ 'describeAgentVersionsResponse' smart constructor.
data DescribeAgentVersionsResponse = DescribeAgentVersionsResponse'
  { _davrrsAgentVersions ::
      !( Maybe
           [AgentVersion]
       ),
    _davrrsResponseStatus ::
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

-- | Creates a value of 'DescribeAgentVersionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'davrrsAgentVersions' - The agent versions for the specified stack or configuration manager. Note that this value is the complete version number, not the abbreviated number used by the console.
--
-- * 'davrrsResponseStatus' - -- | The response status code.
describeAgentVersionsResponse ::
  -- | 'davrrsResponseStatus'
  Int ->
  DescribeAgentVersionsResponse
describeAgentVersionsResponse pResponseStatus_ =
  DescribeAgentVersionsResponse'
    { _davrrsAgentVersions =
        Nothing,
      _davrrsResponseStatus = pResponseStatus_
    }

-- | The agent versions for the specified stack or configuration manager. Note that this value is the complete version number, not the abbreviated number used by the console.
davrrsAgentVersions :: Lens' DescribeAgentVersionsResponse [AgentVersion]
davrrsAgentVersions = lens _davrrsAgentVersions (\s a -> s {_davrrsAgentVersions = a}) . _Default . _Coerce

-- | -- | The response status code.
davrrsResponseStatus :: Lens' DescribeAgentVersionsResponse Int
davrrsResponseStatus = lens _davrrsResponseStatus (\s a -> s {_davrrsResponseStatus = a})

instance NFData DescribeAgentVersionsResponse
