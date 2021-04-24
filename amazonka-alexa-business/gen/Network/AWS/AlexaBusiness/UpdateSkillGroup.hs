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
-- Module      : Network.AWS.AlexaBusiness.UpdateSkillGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates skill group details by skill group ARN.
module Network.AWS.AlexaBusiness.UpdateSkillGroup
  ( -- * Creating a Request
    updateSkillGroup,
    UpdateSkillGroup,

    -- * Request Lenses
    usgSkillGroupName,
    usgDescription,
    usgSkillGroupARN,

    -- * Destructuring the Response
    updateSkillGroupResponse,
    UpdateSkillGroupResponse,

    -- * Response Lenses
    usgrrsResponseStatus,
  )
where

import Network.AWS.AlexaBusiness.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateSkillGroup' smart constructor.
data UpdateSkillGroup = UpdateSkillGroup'
  { _usgSkillGroupName ::
      !(Maybe Text),
    _usgDescription :: !(Maybe Text),
    _usgSkillGroupARN :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateSkillGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usgSkillGroupName' - The updated name for the skill group.
--
-- * 'usgDescription' - The updated description for the skill group.
--
-- * 'usgSkillGroupARN' - The ARN of the skill group to update.
updateSkillGroup ::
  UpdateSkillGroup
updateSkillGroup =
  UpdateSkillGroup'
    { _usgSkillGroupName = Nothing,
      _usgDescription = Nothing,
      _usgSkillGroupARN = Nothing
    }

-- | The updated name for the skill group.
usgSkillGroupName :: Lens' UpdateSkillGroup (Maybe Text)
usgSkillGroupName = lens _usgSkillGroupName (\s a -> s {_usgSkillGroupName = a})

-- | The updated description for the skill group.
usgDescription :: Lens' UpdateSkillGroup (Maybe Text)
usgDescription = lens _usgDescription (\s a -> s {_usgDescription = a})

-- | The ARN of the skill group to update.
usgSkillGroupARN :: Lens' UpdateSkillGroup (Maybe Text)
usgSkillGroupARN = lens _usgSkillGroupARN (\s a -> s {_usgSkillGroupARN = a})

instance AWSRequest UpdateSkillGroup where
  type Rs UpdateSkillGroup = UpdateSkillGroupResponse
  request = postJSON alexaBusiness
  response =
    receiveEmpty
      ( \s h x ->
          UpdateSkillGroupResponse' <$> (pure (fromEnum s))
      )

instance Hashable UpdateSkillGroup

instance NFData UpdateSkillGroup

instance ToHeaders UpdateSkillGroup where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AlexaForBusiness.UpdateSkillGroup" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateSkillGroup where
  toJSON UpdateSkillGroup' {..} =
    object
      ( catMaybes
          [ ("SkillGroupName" .=) <$> _usgSkillGroupName,
            ("Description" .=) <$> _usgDescription,
            ("SkillGroupArn" .=) <$> _usgSkillGroupARN
          ]
      )

instance ToPath UpdateSkillGroup where
  toPath = const "/"

instance ToQuery UpdateSkillGroup where
  toQuery = const mempty

-- | /See:/ 'updateSkillGroupResponse' smart constructor.
newtype UpdateSkillGroupResponse = UpdateSkillGroupResponse'
  { _usgrrsResponseStatus ::
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

-- | Creates a value of 'UpdateSkillGroupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usgrrsResponseStatus' - -- | The response status code.
updateSkillGroupResponse ::
  -- | 'usgrrsResponseStatus'
  Int ->
  UpdateSkillGroupResponse
updateSkillGroupResponse pResponseStatus_ =
  UpdateSkillGroupResponse'
    { _usgrrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
usgrrsResponseStatus :: Lens' UpdateSkillGroupResponse Int
usgrrsResponseStatus = lens _usgrrsResponseStatus (\s a -> s {_usgrrsResponseStatus = a})

instance NFData UpdateSkillGroupResponse
