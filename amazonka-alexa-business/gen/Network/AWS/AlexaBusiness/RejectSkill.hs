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
-- Module      : Network.AWS.AlexaBusiness.RejectSkill
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disassociates a skill from the organization under a user's AWS account. If the skill is a private skill, it moves to an AcceptStatus of PENDING. Any private or public skill that is rejected can be added later by calling the ApproveSkill API.
module Network.AWS.AlexaBusiness.RejectSkill
  ( -- * Creating a Request
    rejectSkill,
    RejectSkill,

    -- * Request Lenses
    rsSkillId,

    -- * Destructuring the Response
    rejectSkillResponse,
    RejectSkillResponse,

    -- * Response Lenses
    rsrrsResponseStatus,
  )
where

import Network.AWS.AlexaBusiness.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'rejectSkill' smart constructor.
newtype RejectSkill = RejectSkill'
  { _rsSkillId ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'RejectSkill' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rsSkillId' - The unique identifier of the skill.
rejectSkill ::
  -- | 'rsSkillId'
  Text ->
  RejectSkill
rejectSkill pSkillId_ =
  RejectSkill' {_rsSkillId = pSkillId_}

-- | The unique identifier of the skill.
rsSkillId :: Lens' RejectSkill Text
rsSkillId = lens _rsSkillId (\s a -> s {_rsSkillId = a})

instance AWSRequest RejectSkill where
  type Rs RejectSkill = RejectSkillResponse
  request = postJSON alexaBusiness
  response =
    receiveEmpty
      ( \s h x ->
          RejectSkillResponse' <$> (pure (fromEnum s))
      )

instance Hashable RejectSkill

instance NFData RejectSkill

instance ToHeaders RejectSkill where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AlexaForBusiness.RejectSkill" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON RejectSkill where
  toJSON RejectSkill' {..} =
    object (catMaybes [Just ("SkillId" .= _rsSkillId)])

instance ToPath RejectSkill where
  toPath = const "/"

instance ToQuery RejectSkill where
  toQuery = const mempty

-- | /See:/ 'rejectSkillResponse' smart constructor.
newtype RejectSkillResponse = RejectSkillResponse'
  { _rsrrsResponseStatus ::
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

-- | Creates a value of 'RejectSkillResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rsrrsResponseStatus' - -- | The response status code.
rejectSkillResponse ::
  -- | 'rsrrsResponseStatus'
  Int ->
  RejectSkillResponse
rejectSkillResponse pResponseStatus_ =
  RejectSkillResponse'
    { _rsrrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
rsrrsResponseStatus :: Lens' RejectSkillResponse Int
rsrrsResponseStatus = lens _rsrrsResponseStatus (\s a -> s {_rsrrsResponseStatus = a})

instance NFData RejectSkillResponse
