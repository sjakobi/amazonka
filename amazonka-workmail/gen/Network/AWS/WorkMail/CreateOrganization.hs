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
-- Module      : Network.AWS.WorkMail.CreateOrganization
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new Amazon WorkMail organization. Optionally, you can choose to associate an existing AWS Directory Service directory with your organization. If an AWS Directory Service directory ID is specified, the organization alias must match the directory alias. If you choose not to associate an existing directory with your organization, then we create a new Amazon WorkMail directory for you. For more information, see <https://docs.aws.amazon.com/workmail/latest/adminguide/add_new_organization.html Adding an organization> in the /Amazon WorkMail Administrator Guide/ .
--
--
-- You can associate multiple email domains with an organization, then set your default email domain from the Amazon WorkMail console. You can also associate a domain that is managed in an Amazon Route 53 public hosted zone. For more information, see <https://docs.aws.amazon.com/workmail/latest/adminguide/add_domain.html Adding a domain> and <https://docs.aws.amazon.com/workmail/latest/adminguide/default_domain.html Choosing the default domain> in the /Amazon WorkMail Administrator Guide/ .
--
-- Optionally, you can use a customer managed master key from AWS Key Management Service (AWS KMS) to encrypt email for your organization. If you don't associate an AWS KMS key, Amazon WorkMail creates a default AWS managed master key for you.
module Network.AWS.WorkMail.CreateOrganization
  ( -- * Creating a Request
    createOrganization,
    CreateOrganization,

    -- * Request Lenses
    coEnableInteroperability,
    coDomains,
    coKMSKeyARN,
    coDirectoryId,
    coClientToken,
    coAlias,

    -- * Destructuring the Response
    createOrganizationResponse,
    CreateOrganizationResponse,

    -- * Response Lenses
    corrsOrganizationId,
    corrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.WorkMail.Types

-- | /See:/ 'createOrganization' smart constructor.
data CreateOrganization = CreateOrganization'
  { _coEnableInteroperability ::
      !(Maybe Bool),
    _coDomains :: !(Maybe [Domain]),
    _coKMSKeyARN :: !(Maybe Text),
    _coDirectoryId :: !(Maybe Text),
    _coClientToken :: !(Maybe Text),
    _coAlias :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateOrganization' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'coEnableInteroperability' - When @true@ , allows organization interoperability between Amazon WorkMail and Microsoft Exchange. Can only be set to @true@ if an AD Connector directory ID is included in the request.
--
-- * 'coDomains' - The email domains to associate with the organization.
--
-- * 'coKMSKeyARN' - The Amazon Resource Name (ARN) of a customer managed master key from AWS KMS.
--
-- * 'coDirectoryId' - The AWS Directory Service directory ID.
--
-- * 'coClientToken' - The idempotency token associated with the request.
--
-- * 'coAlias' - The organization alias.
createOrganization ::
  -- | 'coAlias'
  Text ->
  CreateOrganization
createOrganization pAlias_ =
  CreateOrganization'
    { _coEnableInteroperability =
        Nothing,
      _coDomains = Nothing,
      _coKMSKeyARN = Nothing,
      _coDirectoryId = Nothing,
      _coClientToken = Nothing,
      _coAlias = pAlias_
    }

-- | When @true@ , allows organization interoperability between Amazon WorkMail and Microsoft Exchange. Can only be set to @true@ if an AD Connector directory ID is included in the request.
coEnableInteroperability :: Lens' CreateOrganization (Maybe Bool)
coEnableInteroperability = lens _coEnableInteroperability (\s a -> s {_coEnableInteroperability = a})

-- | The email domains to associate with the organization.
coDomains :: Lens' CreateOrganization [Domain]
coDomains = lens _coDomains (\s a -> s {_coDomains = a}) . _Default . _Coerce

-- | The Amazon Resource Name (ARN) of a customer managed master key from AWS KMS.
coKMSKeyARN :: Lens' CreateOrganization (Maybe Text)
coKMSKeyARN = lens _coKMSKeyARN (\s a -> s {_coKMSKeyARN = a})

-- | The AWS Directory Service directory ID.
coDirectoryId :: Lens' CreateOrganization (Maybe Text)
coDirectoryId = lens _coDirectoryId (\s a -> s {_coDirectoryId = a})

-- | The idempotency token associated with the request.
coClientToken :: Lens' CreateOrganization (Maybe Text)
coClientToken = lens _coClientToken (\s a -> s {_coClientToken = a})

-- | The organization alias.
coAlias :: Lens' CreateOrganization Text
coAlias = lens _coAlias (\s a -> s {_coAlias = a})

instance AWSRequest CreateOrganization where
  type
    Rs CreateOrganization =
      CreateOrganizationResponse
  request = postJSON workMail
  response =
    receiveJSON
      ( \s h x ->
          CreateOrganizationResponse'
            <$> (x .?> "OrganizationId") <*> (pure (fromEnum s))
      )

instance Hashable CreateOrganization

instance NFData CreateOrganization

instance ToHeaders CreateOrganization where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("WorkMailService.CreateOrganization" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateOrganization where
  toJSON CreateOrganization' {..} =
    object
      ( catMaybes
          [ ("EnableInteroperability" .=)
              <$> _coEnableInteroperability,
            ("Domains" .=) <$> _coDomains,
            ("KmsKeyArn" .=) <$> _coKMSKeyARN,
            ("DirectoryId" .=) <$> _coDirectoryId,
            ("ClientToken" .=) <$> _coClientToken,
            Just ("Alias" .= _coAlias)
          ]
      )

instance ToPath CreateOrganization where
  toPath = const "/"

instance ToQuery CreateOrganization where
  toQuery = const mempty

-- | /See:/ 'createOrganizationResponse' smart constructor.
data CreateOrganizationResponse = CreateOrganizationResponse'
  { _corrsOrganizationId ::
      !(Maybe Text),
    _corrsResponseStatus ::
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

-- | Creates a value of 'CreateOrganizationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'corrsOrganizationId' - The organization ID.
--
-- * 'corrsResponseStatus' - -- | The response status code.
createOrganizationResponse ::
  -- | 'corrsResponseStatus'
  Int ->
  CreateOrganizationResponse
createOrganizationResponse pResponseStatus_ =
  CreateOrganizationResponse'
    { _corrsOrganizationId =
        Nothing,
      _corrsResponseStatus = pResponseStatus_
    }

-- | The organization ID.
corrsOrganizationId :: Lens' CreateOrganizationResponse (Maybe Text)
corrsOrganizationId = lens _corrsOrganizationId (\s a -> s {_corrsOrganizationId = a})

-- | -- | The response status code.
corrsResponseStatus :: Lens' CreateOrganizationResponse Int
corrsResponseStatus = lens _corrsResponseStatus (\s a -> s {_corrsResponseStatus = a})

instance NFData CreateOrganizationResponse
