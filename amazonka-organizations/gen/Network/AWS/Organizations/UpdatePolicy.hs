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
-- Module      : Network.AWS.Organizations.UpdatePolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing policy with a new name, description, or content. If you don't supply any parameter, that value remains unchanged. You can't change a policy's type.
--
--
-- This operation can be called only from the organization's management account.
module Network.AWS.Organizations.UpdatePolicy
  ( -- * Creating a Request
    updatePolicy,
    UpdatePolicy,

    -- * Request Lenses
    upName,
    upContent,
    upDescription,
    upPolicyId,

    -- * Destructuring the Response
    updatePolicyResponse,
    UpdatePolicyResponse,

    -- * Response Lenses
    uprrsPolicy,
    uprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Organizations.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updatePolicy' smart constructor.
data UpdatePolicy = UpdatePolicy'
  { _upName ::
      !(Maybe Text),
    _upContent :: !(Maybe Text),
    _upDescription :: !(Maybe Text),
    _upPolicyId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdatePolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'upName' - If provided, the new name for the policy. The <http://wikipedia.org/wiki/regex regex pattern> that is used to validate this parameter is a string of any of the characters in the ASCII character range.
--
-- * 'upContent' - If provided, the new content for the policy. The text must be correctly formatted JSON that complies with the syntax for the policy's type. For more information, see <https://docs.aws.amazon.com/organizations/latest/userguide/orgs_reference_scp-syntax.html Service Control Policy Syntax> in the /AWS Organizations User Guide./
--
-- * 'upDescription' - If provided, the new description for the policy.
--
-- * 'upPolicyId' - The unique identifier (ID) of the policy that you want to update. The <http://wikipedia.org/wiki/regex regex pattern> for a policy ID string requires "p-" followed by from 8 to 128 lowercase or uppercase letters, digits, or the underscore character (_).
updatePolicy ::
  -- | 'upPolicyId'
  Text ->
  UpdatePolicy
updatePolicy pPolicyId_ =
  UpdatePolicy'
    { _upName = Nothing,
      _upContent = Nothing,
      _upDescription = Nothing,
      _upPolicyId = pPolicyId_
    }

-- | If provided, the new name for the policy. The <http://wikipedia.org/wiki/regex regex pattern> that is used to validate this parameter is a string of any of the characters in the ASCII character range.
upName :: Lens' UpdatePolicy (Maybe Text)
upName = lens _upName (\s a -> s {_upName = a})

-- | If provided, the new content for the policy. The text must be correctly formatted JSON that complies with the syntax for the policy's type. For more information, see <https://docs.aws.amazon.com/organizations/latest/userguide/orgs_reference_scp-syntax.html Service Control Policy Syntax> in the /AWS Organizations User Guide./
upContent :: Lens' UpdatePolicy (Maybe Text)
upContent = lens _upContent (\s a -> s {_upContent = a})

-- | If provided, the new description for the policy.
upDescription :: Lens' UpdatePolicy (Maybe Text)
upDescription = lens _upDescription (\s a -> s {_upDescription = a})

-- | The unique identifier (ID) of the policy that you want to update. The <http://wikipedia.org/wiki/regex regex pattern> for a policy ID string requires "p-" followed by from 8 to 128 lowercase or uppercase letters, digits, or the underscore character (_).
upPolicyId :: Lens' UpdatePolicy Text
upPolicyId = lens _upPolicyId (\s a -> s {_upPolicyId = a})

instance AWSRequest UpdatePolicy where
  type Rs UpdatePolicy = UpdatePolicyResponse
  request = postJSON organizations
  response =
    receiveJSON
      ( \s h x ->
          UpdatePolicyResponse'
            <$> (x .?> "Policy") <*> (pure (fromEnum s))
      )

instance Hashable UpdatePolicy

instance NFData UpdatePolicy

instance ToHeaders UpdatePolicy where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSOrganizationsV20161128.UpdatePolicy" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdatePolicy where
  toJSON UpdatePolicy' {..} =
    object
      ( catMaybes
          [ ("Name" .=) <$> _upName,
            ("Content" .=) <$> _upContent,
            ("Description" .=) <$> _upDescription,
            Just ("PolicyId" .= _upPolicyId)
          ]
      )

instance ToPath UpdatePolicy where
  toPath = const "/"

instance ToQuery UpdatePolicy where
  toQuery = const mempty

-- | /See:/ 'updatePolicyResponse' smart constructor.
data UpdatePolicyResponse = UpdatePolicyResponse'
  { _uprrsPolicy ::
      !(Maybe Policy),
    _uprrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdatePolicyResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uprrsPolicy' - A structure that contains details about the updated policy, showing the requested changes.
--
-- * 'uprrsResponseStatus' - -- | The response status code.
updatePolicyResponse ::
  -- | 'uprrsResponseStatus'
  Int ->
  UpdatePolicyResponse
updatePolicyResponse pResponseStatus_ =
  UpdatePolicyResponse'
    { _uprrsPolicy = Nothing,
      _uprrsResponseStatus = pResponseStatus_
    }

-- | A structure that contains details about the updated policy, showing the requested changes.
uprrsPolicy :: Lens' UpdatePolicyResponse (Maybe Policy)
uprrsPolicy = lens _uprrsPolicy (\s a -> s {_uprrsPolicy = a})

-- | -- | The response status code.
uprrsResponseStatus :: Lens' UpdatePolicyResponse Int
uprrsResponseStatus = lens _uprrsResponseStatus (\s a -> s {_uprrsResponseStatus = a})

instance NFData UpdatePolicyResponse
