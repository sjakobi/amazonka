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
-- Module      : Network.AWS.IoT.CreateBillingGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a billing group.
module Network.AWS.IoT.CreateBillingGroup
  ( -- * Creating a Request
    createBillingGroup,
    CreateBillingGroup,

    -- * Request Lenses
    cbgBillingGroupProperties,
    cbgTags,
    cbgBillingGroupName,

    -- * Destructuring the Response
    createBillingGroupResponse,
    CreateBillingGroupResponse,

    -- * Response Lenses
    cbgrrsBillingGroupARN,
    cbgrrsBillingGroupId,
    cbgrrsBillingGroupName,
    cbgrrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createBillingGroup' smart constructor.
data CreateBillingGroup = CreateBillingGroup'
  { _cbgBillingGroupProperties ::
      !(Maybe BillingGroupProperties),
    _cbgTags :: !(Maybe [Tag]),
    _cbgBillingGroupName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateBillingGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cbgBillingGroupProperties' - The properties of the billing group.
--
-- * 'cbgTags' - Metadata which can be used to manage the billing group.
--
-- * 'cbgBillingGroupName' - The name you wish to give to the billing group.
createBillingGroup ::
  -- | 'cbgBillingGroupName'
  Text ->
  CreateBillingGroup
createBillingGroup pBillingGroupName_ =
  CreateBillingGroup'
    { _cbgBillingGroupProperties =
        Nothing,
      _cbgTags = Nothing,
      _cbgBillingGroupName = pBillingGroupName_
    }

-- | The properties of the billing group.
cbgBillingGroupProperties :: Lens' CreateBillingGroup (Maybe BillingGroupProperties)
cbgBillingGroupProperties = lens _cbgBillingGroupProperties (\s a -> s {_cbgBillingGroupProperties = a})

-- | Metadata which can be used to manage the billing group.
cbgTags :: Lens' CreateBillingGroup [Tag]
cbgTags = lens _cbgTags (\s a -> s {_cbgTags = a}) . _Default . _Coerce

-- | The name you wish to give to the billing group.
cbgBillingGroupName :: Lens' CreateBillingGroup Text
cbgBillingGroupName = lens _cbgBillingGroupName (\s a -> s {_cbgBillingGroupName = a})

instance AWSRequest CreateBillingGroup where
  type
    Rs CreateBillingGroup =
      CreateBillingGroupResponse
  request = postJSON ioT
  response =
    receiveJSON
      ( \s h x ->
          CreateBillingGroupResponse'
            <$> (x .?> "billingGroupArn")
            <*> (x .?> "billingGroupId")
            <*> (x .?> "billingGroupName")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateBillingGroup

instance NFData CreateBillingGroup

instance ToHeaders CreateBillingGroup where
  toHeaders = const mempty

instance ToJSON CreateBillingGroup where
  toJSON CreateBillingGroup' {..} =
    object
      ( catMaybes
          [ ("billingGroupProperties" .=)
              <$> _cbgBillingGroupProperties,
            ("tags" .=) <$> _cbgTags
          ]
      )

instance ToPath CreateBillingGroup where
  toPath CreateBillingGroup' {..} =
    mconcat
      ["/billing-groups/", toBS _cbgBillingGroupName]

instance ToQuery CreateBillingGroup where
  toQuery = const mempty

-- | /See:/ 'createBillingGroupResponse' smart constructor.
data CreateBillingGroupResponse = CreateBillingGroupResponse'
  { _cbgrrsBillingGroupARN ::
      !(Maybe Text),
    _cbgrrsBillingGroupId ::
      !(Maybe Text),
    _cbgrrsBillingGroupName ::
      !(Maybe Text),
    _cbgrrsResponseStatus ::
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

-- | Creates a value of 'CreateBillingGroupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cbgrrsBillingGroupARN' - The ARN of the billing group.
--
-- * 'cbgrrsBillingGroupId' - The ID of the billing group.
--
-- * 'cbgrrsBillingGroupName' - The name you gave to the billing group.
--
-- * 'cbgrrsResponseStatus' - -- | The response status code.
createBillingGroupResponse ::
  -- | 'cbgrrsResponseStatus'
  Int ->
  CreateBillingGroupResponse
createBillingGroupResponse pResponseStatus_ =
  CreateBillingGroupResponse'
    { _cbgrrsBillingGroupARN =
        Nothing,
      _cbgrrsBillingGroupId = Nothing,
      _cbgrrsBillingGroupName = Nothing,
      _cbgrrsResponseStatus = pResponseStatus_
    }

-- | The ARN of the billing group.
cbgrrsBillingGroupARN :: Lens' CreateBillingGroupResponse (Maybe Text)
cbgrrsBillingGroupARN = lens _cbgrrsBillingGroupARN (\s a -> s {_cbgrrsBillingGroupARN = a})

-- | The ID of the billing group.
cbgrrsBillingGroupId :: Lens' CreateBillingGroupResponse (Maybe Text)
cbgrrsBillingGroupId = lens _cbgrrsBillingGroupId (\s a -> s {_cbgrrsBillingGroupId = a})

-- | The name you gave to the billing group.
cbgrrsBillingGroupName :: Lens' CreateBillingGroupResponse (Maybe Text)
cbgrrsBillingGroupName = lens _cbgrrsBillingGroupName (\s a -> s {_cbgrrsBillingGroupName = a})

-- | -- | The response status code.
cbgrrsResponseStatus :: Lens' CreateBillingGroupResponse Int
cbgrrsResponseStatus = lens _cbgrrsResponseStatus (\s a -> s {_cbgrrsResponseStatus = a})

instance NFData CreateBillingGroupResponse
