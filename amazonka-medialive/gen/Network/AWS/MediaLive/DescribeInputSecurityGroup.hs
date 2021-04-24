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
-- Module      : Network.AWS.MediaLive.DescribeInputSecurityGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Produces a summary of an Input Security Group
module Network.AWS.MediaLive.DescribeInputSecurityGroup
  ( -- * Creating a Request
    describeInputSecurityGroup,
    DescribeInputSecurityGroup,

    -- * Request Lenses
    dInputSecurityGroupId,

    -- * Destructuring the Response
    describeInputSecurityGroupResponse,
    DescribeInputSecurityGroupResponse,

    -- * Response Lenses
    disgrrsARN,
    disgrrsId,
    disgrrsState,
    disgrrsTags,
    disgrrsWhitelistRules,
    disgrrsInputs,
    disgrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Placeholder documentation for DescribeInputSecurityGroupRequest
--
-- /See:/ 'describeInputSecurityGroup' smart constructor.
newtype DescribeInputSecurityGroup = DescribeInputSecurityGroup'
  { _dInputSecurityGroupId ::
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

-- | Creates a value of 'DescribeInputSecurityGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dInputSecurityGroupId' - The id of the Input Security Group to describe
describeInputSecurityGroup ::
  -- | 'dInputSecurityGroupId'
  Text ->
  DescribeInputSecurityGroup
describeInputSecurityGroup pInputSecurityGroupId_ =
  DescribeInputSecurityGroup'
    { _dInputSecurityGroupId =
        pInputSecurityGroupId_
    }

-- | The id of the Input Security Group to describe
dInputSecurityGroupId :: Lens' DescribeInputSecurityGroup Text
dInputSecurityGroupId = lens _dInputSecurityGroupId (\s a -> s {_dInputSecurityGroupId = a})

instance AWSRequest DescribeInputSecurityGroup where
  type
    Rs DescribeInputSecurityGroup =
      DescribeInputSecurityGroupResponse
  request = get mediaLive
  response =
    receiveJSON
      ( \s h x ->
          DescribeInputSecurityGroupResponse'
            <$> (x .?> "arn")
            <*> (x .?> "id")
            <*> (x .?> "state")
            <*> (x .?> "tags" .!@ mempty)
            <*> (x .?> "whitelistRules" .!@ mempty)
            <*> (x .?> "inputs" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeInputSecurityGroup

instance NFData DescribeInputSecurityGroup

instance ToHeaders DescribeInputSecurityGroup where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath DescribeInputSecurityGroup where
  toPath DescribeInputSecurityGroup' {..} =
    mconcat
      [ "/prod/inputSecurityGroups/",
        toBS _dInputSecurityGroupId
      ]

instance ToQuery DescribeInputSecurityGroup where
  toQuery = const mempty

-- | Placeholder documentation for DescribeInputSecurityGroupResponse
--
-- /See:/ 'describeInputSecurityGroupResponse' smart constructor.
data DescribeInputSecurityGroupResponse = DescribeInputSecurityGroupResponse'
  { _disgrrsARN ::
      !( Maybe
           Text
       ),
    _disgrrsId ::
      !( Maybe
           Text
       ),
    _disgrrsState ::
      !( Maybe
           InputSecurityGroupState
       ),
    _disgrrsTags ::
      !( Maybe
           ( Map
               Text
               Text
           )
       ),
    _disgrrsWhitelistRules ::
      !( Maybe
           [InputWhitelistRule]
       ),
    _disgrrsInputs ::
      !( Maybe
           [Text]
       ),
    _disgrrsResponseStatus ::
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

-- | Creates a value of 'DescribeInputSecurityGroupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'disgrrsARN' - Unique ARN of Input Security Group
--
-- * 'disgrrsId' - The Id of the Input Security Group
--
-- * 'disgrrsState' - The current state of the Input Security Group.
--
-- * 'disgrrsTags' - A collection of key-value pairs.
--
-- * 'disgrrsWhitelistRules' - Whitelist rules and their sync status
--
-- * 'disgrrsInputs' - The list of inputs currently using this Input Security Group.
--
-- * 'disgrrsResponseStatus' - -- | The response status code.
describeInputSecurityGroupResponse ::
  -- | 'disgrrsResponseStatus'
  Int ->
  DescribeInputSecurityGroupResponse
describeInputSecurityGroupResponse pResponseStatus_ =
  DescribeInputSecurityGroupResponse'
    { _disgrrsARN =
        Nothing,
      _disgrrsId = Nothing,
      _disgrrsState = Nothing,
      _disgrrsTags = Nothing,
      _disgrrsWhitelistRules = Nothing,
      _disgrrsInputs = Nothing,
      _disgrrsResponseStatus =
        pResponseStatus_
    }

-- | Unique ARN of Input Security Group
disgrrsARN :: Lens' DescribeInputSecurityGroupResponse (Maybe Text)
disgrrsARN = lens _disgrrsARN (\s a -> s {_disgrrsARN = a})

-- | The Id of the Input Security Group
disgrrsId :: Lens' DescribeInputSecurityGroupResponse (Maybe Text)
disgrrsId = lens _disgrrsId (\s a -> s {_disgrrsId = a})

-- | The current state of the Input Security Group.
disgrrsState :: Lens' DescribeInputSecurityGroupResponse (Maybe InputSecurityGroupState)
disgrrsState = lens _disgrrsState (\s a -> s {_disgrrsState = a})

-- | A collection of key-value pairs.
disgrrsTags :: Lens' DescribeInputSecurityGroupResponse (HashMap Text Text)
disgrrsTags = lens _disgrrsTags (\s a -> s {_disgrrsTags = a}) . _Default . _Map

-- | Whitelist rules and their sync status
disgrrsWhitelistRules :: Lens' DescribeInputSecurityGroupResponse [InputWhitelistRule]
disgrrsWhitelistRules = lens _disgrrsWhitelistRules (\s a -> s {_disgrrsWhitelistRules = a}) . _Default . _Coerce

-- | The list of inputs currently using this Input Security Group.
disgrrsInputs :: Lens' DescribeInputSecurityGroupResponse [Text]
disgrrsInputs = lens _disgrrsInputs (\s a -> s {_disgrrsInputs = a}) . _Default . _Coerce

-- | -- | The response status code.
disgrrsResponseStatus :: Lens' DescribeInputSecurityGroupResponse Int
disgrrsResponseStatus = lens _disgrrsResponseStatus (\s a -> s {_disgrrsResponseStatus = a})

instance NFData DescribeInputSecurityGroupResponse
