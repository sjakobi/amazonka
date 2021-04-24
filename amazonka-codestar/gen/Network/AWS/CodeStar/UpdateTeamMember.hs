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
-- Module      : Network.AWS.CodeStar.UpdateTeamMember
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a team member's attributes in an AWS CodeStar project. For example, you can change a team member's role in the project, or change whether they have remote access to project resources.
module Network.AWS.CodeStar.UpdateTeamMember
  ( -- * Creating a Request
    updateTeamMember,
    UpdateTeamMember,

    -- * Request Lenses
    utmProjectRole,
    utmRemoteAccessAllowed,
    utmProjectId,
    utmUserARN,

    -- * Destructuring the Response
    updateTeamMemberResponse,
    UpdateTeamMemberResponse,

    -- * Response Lenses
    utmrrsUserARN,
    utmrrsProjectRole,
    utmrrsRemoteAccessAllowed,
    utmrrsResponseStatus,
  )
where

import Network.AWS.CodeStar.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateTeamMember' smart constructor.
data UpdateTeamMember = UpdateTeamMember'
  { _utmProjectRole ::
      !(Maybe Text),
    _utmRemoteAccessAllowed ::
      !(Maybe Bool),
    _utmProjectId :: !Text,
    _utmUserARN :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateTeamMember' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'utmProjectRole' - The role assigned to the user in the project. Project roles have different levels of access. For more information, see <http://docs.aws.amazon.com/codestar/latest/userguide/working-with-teams.html Working with Teams> in the /AWS CodeStar User Guide/ .
--
-- * 'utmRemoteAccessAllowed' - Whether a team member is allowed to remotely access project resources using the SSH public key associated with the user's profile. Even if this is set to True, the user must associate a public key with their profile before the user can access resources.
--
-- * 'utmProjectId' - The ID of the project.
--
-- * 'utmUserARN' - The Amazon Resource Name (ARN) of the user for whom you want to change team membership attributes.
updateTeamMember ::
  -- | 'utmProjectId'
  Text ->
  -- | 'utmUserARN'
  Text ->
  UpdateTeamMember
updateTeamMember pProjectId_ pUserARN_ =
  UpdateTeamMember'
    { _utmProjectRole = Nothing,
      _utmRemoteAccessAllowed = Nothing,
      _utmProjectId = pProjectId_,
      _utmUserARN = pUserARN_
    }

-- | The role assigned to the user in the project. Project roles have different levels of access. For more information, see <http://docs.aws.amazon.com/codestar/latest/userguide/working-with-teams.html Working with Teams> in the /AWS CodeStar User Guide/ .
utmProjectRole :: Lens' UpdateTeamMember (Maybe Text)
utmProjectRole = lens _utmProjectRole (\s a -> s {_utmProjectRole = a})

-- | Whether a team member is allowed to remotely access project resources using the SSH public key associated with the user's profile. Even if this is set to True, the user must associate a public key with their profile before the user can access resources.
utmRemoteAccessAllowed :: Lens' UpdateTeamMember (Maybe Bool)
utmRemoteAccessAllowed = lens _utmRemoteAccessAllowed (\s a -> s {_utmRemoteAccessAllowed = a})

-- | The ID of the project.
utmProjectId :: Lens' UpdateTeamMember Text
utmProjectId = lens _utmProjectId (\s a -> s {_utmProjectId = a})

-- | The Amazon Resource Name (ARN) of the user for whom you want to change team membership attributes.
utmUserARN :: Lens' UpdateTeamMember Text
utmUserARN = lens _utmUserARN (\s a -> s {_utmUserARN = a})

instance AWSRequest UpdateTeamMember where
  type Rs UpdateTeamMember = UpdateTeamMemberResponse
  request = postJSON codeStar
  response =
    receiveJSON
      ( \s h x ->
          UpdateTeamMemberResponse'
            <$> (x .?> "userArn")
            <*> (x .?> "projectRole")
            <*> (x .?> "remoteAccessAllowed")
            <*> (pure (fromEnum s))
      )

instance Hashable UpdateTeamMember

instance NFData UpdateTeamMember

instance ToHeaders UpdateTeamMember where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("CodeStar_20170419.UpdateTeamMember" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateTeamMember where
  toJSON UpdateTeamMember' {..} =
    object
      ( catMaybes
          [ ("projectRole" .=) <$> _utmProjectRole,
            ("remoteAccessAllowed" .=)
              <$> _utmRemoteAccessAllowed,
            Just ("projectId" .= _utmProjectId),
            Just ("userArn" .= _utmUserARN)
          ]
      )

instance ToPath UpdateTeamMember where
  toPath = const "/"

instance ToQuery UpdateTeamMember where
  toQuery = const mempty

-- | /See:/ 'updateTeamMemberResponse' smart constructor.
data UpdateTeamMemberResponse = UpdateTeamMemberResponse'
  { _utmrrsUserARN ::
      !(Maybe Text),
    _utmrrsProjectRole ::
      !(Maybe Text),
    _utmrrsRemoteAccessAllowed ::
      !(Maybe Bool),
    _utmrrsResponseStatus ::
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

-- | Creates a value of 'UpdateTeamMemberResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'utmrrsUserARN' - The Amazon Resource Name (ARN) of the user whose team membership attributes were updated.
--
-- * 'utmrrsProjectRole' - The project role granted to the user.
--
-- * 'utmrrsRemoteAccessAllowed' - Whether a team member is allowed to remotely access project resources using the SSH public key associated with the user's profile.
--
-- * 'utmrrsResponseStatus' - -- | The response status code.
updateTeamMemberResponse ::
  -- | 'utmrrsResponseStatus'
  Int ->
  UpdateTeamMemberResponse
updateTeamMemberResponse pResponseStatus_ =
  UpdateTeamMemberResponse'
    { _utmrrsUserARN = Nothing,
      _utmrrsProjectRole = Nothing,
      _utmrrsRemoteAccessAllowed = Nothing,
      _utmrrsResponseStatus = pResponseStatus_
    }

-- | The Amazon Resource Name (ARN) of the user whose team membership attributes were updated.
utmrrsUserARN :: Lens' UpdateTeamMemberResponse (Maybe Text)
utmrrsUserARN = lens _utmrrsUserARN (\s a -> s {_utmrrsUserARN = a})

-- | The project role granted to the user.
utmrrsProjectRole :: Lens' UpdateTeamMemberResponse (Maybe Text)
utmrrsProjectRole = lens _utmrrsProjectRole (\s a -> s {_utmrrsProjectRole = a})

-- | Whether a team member is allowed to remotely access project resources using the SSH public key associated with the user's profile.
utmrrsRemoteAccessAllowed :: Lens' UpdateTeamMemberResponse (Maybe Bool)
utmrrsRemoteAccessAllowed = lens _utmrrsRemoteAccessAllowed (\s a -> s {_utmrrsRemoteAccessAllowed = a})

-- | -- | The response status code.
utmrrsResponseStatus :: Lens' UpdateTeamMemberResponse Int
utmrrsResponseStatus = lens _utmrrsResponseStatus (\s a -> s {_utmrrsResponseStatus = a})

instance NFData UpdateTeamMemberResponse
