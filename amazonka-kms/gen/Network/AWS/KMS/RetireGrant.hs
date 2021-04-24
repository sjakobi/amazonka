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
-- Module      : Network.AWS.KMS.RetireGrant
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retires a grant. To clean up, you can retire a grant when you're done using it. You should revoke a grant when you intend to actively deny operations that depend on it. The following are permitted to call this API:
--
--
--     * The AWS account (root user) under which the grant was created
--
--     * The @RetiringPrincipal@ , if present in the grant
--
--     * The @GranteePrincipal@ , if @RetireGrant@ is an operation specified in the grant
--
--
--
-- You must identify the grant to retire by its grant token or by a combination of the grant ID and the Amazon Resource Name (ARN) of the customer master key (CMK). A grant token is a unique variable-length base64-encoded string. A grant ID is a 64 character unique identifier of a grant. The 'CreateGrant' operation returns both.
--
-- __Cross-account use__ : Yes. You can retire a grant on a CMK in a different AWS account.
--
-- __Required permissions:__ : Permission to retire a grant is specified in the grant. You cannot control access to this operation in a policy. For more information, see <https://docs.aws.amazon.com/kms/latest/developerguide/grants.html Using grants> in the /AWS Key Management Service Developer Guide/ .
--
-- __Related operations:__
--
--     * 'CreateGrant'
--
--     * 'ListGrants'
--
--     * 'ListRetirableGrants'
--
--     * 'RevokeGrant'
module Network.AWS.KMS.RetireGrant
  ( -- * Creating a Request
    retireGrant,
    RetireGrant,

    -- * Request Lenses
    rGrantToken,
    rGrantId,
    rKeyId,

    -- * Destructuring the Response
    retireGrantResponse,
    RetireGrantResponse,
  )
where

import Network.AWS.KMS.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'retireGrant' smart constructor.
data RetireGrant = RetireGrant'
  { _rGrantToken ::
      !(Maybe Text),
    _rGrantId :: !(Maybe Text),
    _rKeyId :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'RetireGrant' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rGrantToken' - Token that identifies the grant to be retired.
--
-- * 'rGrantId' - Unique identifier of the grant to retire. The grant ID is returned in the response to a @CreateGrant@ operation.     * Grant ID Example - 0123456789012345678901234567890123456789012345678901234567890123
--
-- * 'rKeyId' - The Amazon Resource Name (ARN) of the CMK associated with the grant.  For example: @arn:aws:kms:us-east-2:444455556666:key/1234abcd-12ab-34cd-56ef-1234567890ab@
retireGrant ::
  RetireGrant
retireGrant =
  RetireGrant'
    { _rGrantToken = Nothing,
      _rGrantId = Nothing,
      _rKeyId = Nothing
    }

-- | Token that identifies the grant to be retired.
rGrantToken :: Lens' RetireGrant (Maybe Text)
rGrantToken = lens _rGrantToken (\s a -> s {_rGrantToken = a})

-- | Unique identifier of the grant to retire. The grant ID is returned in the response to a @CreateGrant@ operation.     * Grant ID Example - 0123456789012345678901234567890123456789012345678901234567890123
rGrantId :: Lens' RetireGrant (Maybe Text)
rGrantId = lens _rGrantId (\s a -> s {_rGrantId = a})

-- | The Amazon Resource Name (ARN) of the CMK associated with the grant.  For example: @arn:aws:kms:us-east-2:444455556666:key/1234abcd-12ab-34cd-56ef-1234567890ab@
rKeyId :: Lens' RetireGrant (Maybe Text)
rKeyId = lens _rKeyId (\s a -> s {_rKeyId = a})

instance AWSRequest RetireGrant where
  type Rs RetireGrant = RetireGrantResponse
  request = postJSON kms
  response = receiveNull RetireGrantResponse'

instance Hashable RetireGrant

instance NFData RetireGrant

instance ToHeaders RetireGrant where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("TrentService.RetireGrant" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON RetireGrant where
  toJSON RetireGrant' {..} =
    object
      ( catMaybes
          [ ("GrantToken" .=) <$> _rGrantToken,
            ("GrantId" .=) <$> _rGrantId,
            ("KeyId" .=) <$> _rKeyId
          ]
      )

instance ToPath RetireGrant where
  toPath = const "/"

instance ToQuery RetireGrant where
  toQuery = const mempty

-- | /See:/ 'retireGrantResponse' smart constructor.
data RetireGrantResponse = RetireGrantResponse'
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'RetireGrantResponse' with the minimum fields required to make a request.
retireGrantResponse ::
  RetireGrantResponse
retireGrantResponse = RetireGrantResponse'

instance NFData RetireGrantResponse
