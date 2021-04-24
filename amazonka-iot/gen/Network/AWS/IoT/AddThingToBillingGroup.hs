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
-- Module      : Network.AWS.IoT.AddThingToBillingGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds a thing to a billing group.
module Network.AWS.IoT.AddThingToBillingGroup
  ( -- * Creating a Request
    addThingToBillingGroup,
    AddThingToBillingGroup,

    -- * Request Lenses
    attbgThingARN,
    attbgThingName,
    attbgBillingGroupARN,
    attbgBillingGroupName,

    -- * Destructuring the Response
    addThingToBillingGroupResponse,
    AddThingToBillingGroupResponse,

    -- * Response Lenses
    attbgrrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'addThingToBillingGroup' smart constructor.
data AddThingToBillingGroup = AddThingToBillingGroup'
  { _attbgThingARN ::
      !(Maybe Text),
    _attbgThingName ::
      !(Maybe Text),
    _attbgBillingGroupARN ::
      !(Maybe Text),
    _attbgBillingGroupName ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'AddThingToBillingGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'attbgThingARN' - The ARN of the thing to be added to the billing group.
--
-- * 'attbgThingName' - The name of the thing to be added to the billing group.
--
-- * 'attbgBillingGroupARN' - The ARN of the billing group.
--
-- * 'attbgBillingGroupName' - The name of the billing group.
addThingToBillingGroup ::
  AddThingToBillingGroup
addThingToBillingGroup =
  AddThingToBillingGroup'
    { _attbgThingARN = Nothing,
      _attbgThingName = Nothing,
      _attbgBillingGroupARN = Nothing,
      _attbgBillingGroupName = Nothing
    }

-- | The ARN of the thing to be added to the billing group.
attbgThingARN :: Lens' AddThingToBillingGroup (Maybe Text)
attbgThingARN = lens _attbgThingARN (\s a -> s {_attbgThingARN = a})

-- | The name of the thing to be added to the billing group.
attbgThingName :: Lens' AddThingToBillingGroup (Maybe Text)
attbgThingName = lens _attbgThingName (\s a -> s {_attbgThingName = a})

-- | The ARN of the billing group.
attbgBillingGroupARN :: Lens' AddThingToBillingGroup (Maybe Text)
attbgBillingGroupARN = lens _attbgBillingGroupARN (\s a -> s {_attbgBillingGroupARN = a})

-- | The name of the billing group.
attbgBillingGroupName :: Lens' AddThingToBillingGroup (Maybe Text)
attbgBillingGroupName = lens _attbgBillingGroupName (\s a -> s {_attbgBillingGroupName = a})

instance AWSRequest AddThingToBillingGroup where
  type
    Rs AddThingToBillingGroup =
      AddThingToBillingGroupResponse
  request = putJSON ioT
  response =
    receiveEmpty
      ( \s h x ->
          AddThingToBillingGroupResponse'
            <$> (pure (fromEnum s))
      )

instance Hashable AddThingToBillingGroup

instance NFData AddThingToBillingGroup

instance ToHeaders AddThingToBillingGroup where
  toHeaders = const mempty

instance ToJSON AddThingToBillingGroup where
  toJSON AddThingToBillingGroup' {..} =
    object
      ( catMaybes
          [ ("thingArn" .=) <$> _attbgThingARN,
            ("thingName" .=) <$> _attbgThingName,
            ("billingGroupArn" .=) <$> _attbgBillingGroupARN,
            ("billingGroupName" .=) <$> _attbgBillingGroupName
          ]
      )

instance ToPath AddThingToBillingGroup where
  toPath =
    const "/billing-groups/addThingToBillingGroup"

instance ToQuery AddThingToBillingGroup where
  toQuery = const mempty

-- | /See:/ 'addThingToBillingGroupResponse' smart constructor.
newtype AddThingToBillingGroupResponse = AddThingToBillingGroupResponse'
  { _attbgrrsResponseStatus ::
      Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'AddThingToBillingGroupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'attbgrrsResponseStatus' - -- | The response status code.
addThingToBillingGroupResponse ::
  -- | 'attbgrrsResponseStatus'
  Int ->
  AddThingToBillingGroupResponse
addThingToBillingGroupResponse pResponseStatus_ =
  AddThingToBillingGroupResponse'
    { _attbgrrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
attbgrrsResponseStatus :: Lens' AddThingToBillingGroupResponse Int
attbgrrsResponseStatus = lens _attbgrrsResponseStatus (\s a -> s {_attbgrrsResponseStatus = a})

instance NFData AddThingToBillingGroupResponse
