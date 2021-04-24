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
-- Module      : Network.AWS.AlexaBusiness.CreateSkillGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a skill group with a specified name and description.
module Network.AWS.AlexaBusiness.CreateSkillGroup
  ( -- * Creating a Request
    createSkillGroup,
    CreateSkillGroup,

    -- * Request Lenses
    csgTags,
    csgDescription,
    csgClientRequestToken,
    csgSkillGroupName,

    -- * Destructuring the Response
    createSkillGroupResponse,
    CreateSkillGroupResponse,

    -- * Response Lenses
    csgrrsSkillGroupARN,
    csgrrsResponseStatus,
  )
where

import Network.AWS.AlexaBusiness.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createSkillGroup' smart constructor.
data CreateSkillGroup = CreateSkillGroup'
  { _csgTags ::
      !(Maybe [Tag]),
    _csgDescription :: !(Maybe Text),
    _csgClientRequestToken ::
      !(Maybe Text),
    _csgSkillGroupName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateSkillGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csgTags' - The tags for the skill group.
--
-- * 'csgDescription' - The description for the skill group.
--
-- * 'csgClientRequestToken' - A unique, user-specified identifier for this request that ensures idempotency.
--
-- * 'csgSkillGroupName' - The name for the skill group.
createSkillGroup ::
  -- | 'csgSkillGroupName'
  Text ->
  CreateSkillGroup
createSkillGroup pSkillGroupName_ =
  CreateSkillGroup'
    { _csgTags = Nothing,
      _csgDescription = Nothing,
      _csgClientRequestToken = Nothing,
      _csgSkillGroupName = pSkillGroupName_
    }

-- | The tags for the skill group.
csgTags :: Lens' CreateSkillGroup [Tag]
csgTags = lens _csgTags (\s a -> s {_csgTags = a}) . _Default . _Coerce

-- | The description for the skill group.
csgDescription :: Lens' CreateSkillGroup (Maybe Text)
csgDescription = lens _csgDescription (\s a -> s {_csgDescription = a})

-- | A unique, user-specified identifier for this request that ensures idempotency.
csgClientRequestToken :: Lens' CreateSkillGroup (Maybe Text)
csgClientRequestToken = lens _csgClientRequestToken (\s a -> s {_csgClientRequestToken = a})

-- | The name for the skill group.
csgSkillGroupName :: Lens' CreateSkillGroup Text
csgSkillGroupName = lens _csgSkillGroupName (\s a -> s {_csgSkillGroupName = a})

instance AWSRequest CreateSkillGroup where
  type Rs CreateSkillGroup = CreateSkillGroupResponse
  request = postJSON alexaBusiness
  response =
    receiveJSON
      ( \s h x ->
          CreateSkillGroupResponse'
            <$> (x .?> "SkillGroupArn") <*> (pure (fromEnum s))
      )

instance Hashable CreateSkillGroup

instance NFData CreateSkillGroup

instance ToHeaders CreateSkillGroup where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AlexaForBusiness.CreateSkillGroup" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateSkillGroup where
  toJSON CreateSkillGroup' {..} =
    object
      ( catMaybes
          [ ("Tags" .=) <$> _csgTags,
            ("Description" .=) <$> _csgDescription,
            ("ClientRequestToken" .=) <$> _csgClientRequestToken,
            Just ("SkillGroupName" .= _csgSkillGroupName)
          ]
      )

instance ToPath CreateSkillGroup where
  toPath = const "/"

instance ToQuery CreateSkillGroup where
  toQuery = const mempty

-- | /See:/ 'createSkillGroupResponse' smart constructor.
data CreateSkillGroupResponse = CreateSkillGroupResponse'
  { _csgrrsSkillGroupARN ::
      !(Maybe Text),
    _csgrrsResponseStatus ::
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

-- | Creates a value of 'CreateSkillGroupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csgrrsSkillGroupARN' - The ARN of the newly created skill group in the response.
--
-- * 'csgrrsResponseStatus' - -- | The response status code.
createSkillGroupResponse ::
  -- | 'csgrrsResponseStatus'
  Int ->
  CreateSkillGroupResponse
createSkillGroupResponse pResponseStatus_ =
  CreateSkillGroupResponse'
    { _csgrrsSkillGroupARN =
        Nothing,
      _csgrrsResponseStatus = pResponseStatus_
    }

-- | The ARN of the newly created skill group in the response.
csgrrsSkillGroupARN :: Lens' CreateSkillGroupResponse (Maybe Text)
csgrrsSkillGroupARN = lens _csgrrsSkillGroupARN (\s a -> s {_csgrrsSkillGroupARN = a})

-- | -- | The response status code.
csgrrsResponseStatus :: Lens' CreateSkillGroupResponse Int
csgrrsResponseStatus = lens _csgrrsResponseStatus (\s a -> s {_csgrrsResponseStatus = a})

instance NFData CreateSkillGroupResponse
