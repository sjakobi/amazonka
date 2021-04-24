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
-- Module      : Network.AWS.Organizations.DisableAWSServiceAccess
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disables the integration of an AWS service (the service that is specified by @ServicePrincipal@ ) with AWS Organizations. When you disable integration, the specified service no longer can create a <http://docs.aws.amazon.com/IAM/latest/UserGuide/using-service-linked-roles.html service-linked role> in /new/ accounts in your organization. This means the service can't perform operations on your behalf on any new accounts in your organization. The service can still perform operations in older accounts until the service completes its clean-up from AWS Organizations.
--
--
-- /Important:/ We __/strongly recommend/ __ that you don't use this command to disable integration between AWS Organizations and the specified AWS service. Instead, use the console or commands that are provided by the specified service. This lets the trusted service perform any required initialization when enabling trusted access, such as creating any required resources and any required clean up of resources when disabling trusted access.
--
-- For information about how to disable trusted service access to your organization using the trusted service, see the __Learn more__ link under the __Supports Trusted Access__ column at <https://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services_list.html AWS services that you can use with AWS Organizations> . on this page.
--
-- If you disable access by using this command, it causes the following actions to occur:
--
--     * The service can no longer create a service-linked role in the accounts in your organization. This means that the service can't perform operations on your behalf on any new accounts in your organization. The service can still perform operations in older accounts until the service completes its clean-up from AWS Organizations.
--
--     * The service can no longer perform tasks in the member accounts in the organization, unless those operations are explicitly permitted by the IAM policies that are attached to your roles. This includes any data aggregation from the member accounts to the management account, or to a delegated administrator account, where relevant.
--
--     * Some services detect this and clean up any remaining data or resources related to the integration, while other services stop accessing the organization but leave any historical data and configuration in place to support a possible re-enabling of the integration.
--
--
--
-- Using the other service's console or commands to disable the integration ensures that the other service is aware that it can clean up any resources that are required only for the integration. How the service cleans up its resources in the organization's accounts depends on that service. For more information, see the documentation for the other AWS service.
--
-- After you perform the @DisableAWSServiceAccess@ operation, the specified service can no longer perform operations in your organization's accounts
--
-- For more information about integrating other services with AWS Organizations, including the list of services that work with Organizations, see <http://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html Integrating AWS Organizations with Other AWS Services> in the /AWS Organizations User Guide./
--
-- This operation can be called only from the organization's management account.
module Network.AWS.Organizations.DisableAWSServiceAccess
  ( -- * Creating a Request
    disableAWSServiceAccess,
    DisableAWSServiceAccess,

    -- * Request Lenses
    dasaServicePrincipal,

    -- * Destructuring the Response
    disableAWSServiceAccessResponse,
    DisableAWSServiceAccessResponse,
  )
where

import Network.AWS.Lens
import Network.AWS.Organizations.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'disableAWSServiceAccess' smart constructor.
newtype DisableAWSServiceAccess = DisableAWSServiceAccess'
  { _dasaServicePrincipal ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DisableAWSServiceAccess' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dasaServicePrincipal' - The service principal name of the AWS service for which you want to disable integration with your organization. This is typically in the form of a URL, such as @/service-abbreviation/ .amazonaws.com@ .
disableAWSServiceAccess ::
  -- | 'dasaServicePrincipal'
  Text ->
  DisableAWSServiceAccess
disableAWSServiceAccess pServicePrincipal_ =
  DisableAWSServiceAccess'
    { _dasaServicePrincipal =
        pServicePrincipal_
    }

-- | The service principal name of the AWS service for which you want to disable integration with your organization. This is typically in the form of a URL, such as @/service-abbreviation/ .amazonaws.com@ .
dasaServicePrincipal :: Lens' DisableAWSServiceAccess Text
dasaServicePrincipal = lens _dasaServicePrincipal (\s a -> s {_dasaServicePrincipal = a})

instance AWSRequest DisableAWSServiceAccess where
  type
    Rs DisableAWSServiceAccess =
      DisableAWSServiceAccessResponse
  request = postJSON organizations
  response =
    receiveNull DisableAWSServiceAccessResponse'

instance Hashable DisableAWSServiceAccess

instance NFData DisableAWSServiceAccess

instance ToHeaders DisableAWSServiceAccess where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSOrganizationsV20161128.DisableAWSServiceAccess" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DisableAWSServiceAccess where
  toJSON DisableAWSServiceAccess' {..} =
    object
      ( catMaybes
          [Just ("ServicePrincipal" .= _dasaServicePrincipal)]
      )

instance ToPath DisableAWSServiceAccess where
  toPath = const "/"

instance ToQuery DisableAWSServiceAccess where
  toQuery = const mempty

-- | /See:/ 'disableAWSServiceAccessResponse' smart constructor.
data DisableAWSServiceAccessResponse = DisableAWSServiceAccessResponse'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DisableAWSServiceAccessResponse' with the minimum fields required to make a request.
disableAWSServiceAccessResponse ::
  DisableAWSServiceAccessResponse
disableAWSServiceAccessResponse =
  DisableAWSServiceAccessResponse'

instance NFData DisableAWSServiceAccessResponse
