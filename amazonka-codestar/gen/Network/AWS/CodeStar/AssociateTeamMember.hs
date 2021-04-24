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
-- Module      : Network.AWS.CodeStar.AssociateTeamMember
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds an IAM user to the team for an AWS CodeStar project.
module Network.AWS.CodeStar.AssociateTeamMember
  ( -- * Creating a Request
    associateTeamMember,
    AssociateTeamMember,

    -- * Request Lenses
    atmRemoteAccessAllowed,
    atmClientRequestToken,
    atmProjectId,
    atmUserARN,
    atmProjectRole,

    -- * Destructuring the Response
    associateTeamMemberResponse,
    AssociateTeamMemberResponse,

    -- * Response Lenses
    atmrrsClientRequestToken,
    atmrrsResponseStatus,
  )
where

import Network.AWS.CodeStar.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'associateTeamMember' smart constructor.
data AssociateTeamMember = AssociateTeamMember'
  { _atmRemoteAccessAllowed ::
      !(Maybe Bool),
    _atmClientRequestToken ::
      !(Maybe Text),
    _atmProjectId :: !Text,
    _atmUserARN :: !Text,
    _atmProjectRole :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'AssociateTeamMember' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'atmRemoteAccessAllowed' - Whether the team member is allowed to use an SSH public/private key pair to remotely access project resources, for example Amazon EC2 instances.
--
-- * 'atmClientRequestToken' - A user- or system-generated token that identifies the entity that requested the team member association to the project. This token can be used to repeat the request.
--
-- * 'atmProjectId' - The ID of the project to which you will add the IAM user.
--
-- * 'atmUserARN' - The Amazon Resource Name (ARN) for the IAM user you want to add to the AWS CodeStar project.
--
-- * 'atmProjectRole' - The AWS CodeStar project role that will apply to this user. This role determines what actions a user can take in an AWS CodeStar project.
associateTeamMember ::
  -- | 'atmProjectId'
  Text ->
  -- | 'atmUserARN'
  Text ->
  -- | 'atmProjectRole'
  Text ->
  AssociateTeamMember
associateTeamMember
  pProjectId_
  pUserARN_
  pProjectRole_ =
    AssociateTeamMember'
      { _atmRemoteAccessAllowed =
          Nothing,
        _atmClientRequestToken = Nothing,
        _atmProjectId = pProjectId_,
        _atmUserARN = pUserARN_,
        _atmProjectRole = pProjectRole_
      }

-- | Whether the team member is allowed to use an SSH public/private key pair to remotely access project resources, for example Amazon EC2 instances.
atmRemoteAccessAllowed :: Lens' AssociateTeamMember (Maybe Bool)
atmRemoteAccessAllowed = lens _atmRemoteAccessAllowed (\s a -> s {_atmRemoteAccessAllowed = a})

-- | A user- or system-generated token that identifies the entity that requested the team member association to the project. This token can be used to repeat the request.
atmClientRequestToken :: Lens' AssociateTeamMember (Maybe Text)
atmClientRequestToken = lens _atmClientRequestToken (\s a -> s {_atmClientRequestToken = a})

-- | The ID of the project to which you will add the IAM user.
atmProjectId :: Lens' AssociateTeamMember Text
atmProjectId = lens _atmProjectId (\s a -> s {_atmProjectId = a})

-- | The Amazon Resource Name (ARN) for the IAM user you want to add to the AWS CodeStar project.
atmUserARN :: Lens' AssociateTeamMember Text
atmUserARN = lens _atmUserARN (\s a -> s {_atmUserARN = a})

-- | The AWS CodeStar project role that will apply to this user. This role determines what actions a user can take in an AWS CodeStar project.
atmProjectRole :: Lens' AssociateTeamMember Text
atmProjectRole = lens _atmProjectRole (\s a -> s {_atmProjectRole = a})

instance AWSRequest AssociateTeamMember where
  type
    Rs AssociateTeamMember =
      AssociateTeamMemberResponse
  request = postJSON codeStar
  response =
    receiveJSON
      ( \s h x ->
          AssociateTeamMemberResponse'
            <$> (x .?> "clientRequestToken") <*> (pure (fromEnum s))
      )

instance Hashable AssociateTeamMember

instance NFData AssociateTeamMember

instance ToHeaders AssociateTeamMember where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "CodeStar_20170419.AssociateTeamMember" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON AssociateTeamMember where
  toJSON AssociateTeamMember' {..} =
    object
      ( catMaybes
          [ ("remoteAccessAllowed" .=)
              <$> _atmRemoteAccessAllowed,
            ("clientRequestToken" .=) <$> _atmClientRequestToken,
            Just ("projectId" .= _atmProjectId),
            Just ("userArn" .= _atmUserARN),
            Just ("projectRole" .= _atmProjectRole)
          ]
      )

instance ToPath AssociateTeamMember where
  toPath = const "/"

instance ToQuery AssociateTeamMember where
  toQuery = const mempty

-- | /See:/ 'associateTeamMemberResponse' smart constructor.
data AssociateTeamMemberResponse = AssociateTeamMemberResponse'
  { _atmrrsClientRequestToken ::
      !(Maybe Text),
    _atmrrsResponseStatus ::
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

-- | Creates a value of 'AssociateTeamMemberResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'atmrrsClientRequestToken' - The user- or system-generated token from the initial request that can be used to repeat the request.
--
-- * 'atmrrsResponseStatus' - -- | The response status code.
associateTeamMemberResponse ::
  -- | 'atmrrsResponseStatus'
  Int ->
  AssociateTeamMemberResponse
associateTeamMemberResponse pResponseStatus_ =
  AssociateTeamMemberResponse'
    { _atmrrsClientRequestToken =
        Nothing,
      _atmrrsResponseStatus = pResponseStatus_
    }

-- | The user- or system-generated token from the initial request that can be used to repeat the request.
atmrrsClientRequestToken :: Lens' AssociateTeamMemberResponse (Maybe Text)
atmrrsClientRequestToken = lens _atmrrsClientRequestToken (\s a -> s {_atmrrsClientRequestToken = a})

-- | -- | The response status code.
atmrrsResponseStatus :: Lens' AssociateTeamMemberResponse Int
atmrrsResponseStatus = lens _atmrrsResponseStatus (\s a -> s {_atmrrsResponseStatus = a})

instance NFData AssociateTeamMemberResponse
