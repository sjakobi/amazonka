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
-- Module      : Network.AWS.IAM.ListPoliciesGrantingServiceAccess
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of policies that the IAM identity (user, group, or role) can use to access each specified service.
--
--
-- The list of policies returned by the operation depends on the ARN of the identity that you provide.
--
--     * __User__ – The list of policies includes the managed and inline policies that are attached to the user directly. The list also includes any additional managed and inline policies that are attached to the group to which the user belongs.
--
--     * __Group__ – The list of policies includes only the managed and inline policies that are attached to the group directly. Policies that are attached to the group’s user are not included.
--
--     * __Role__ – The list of policies includes only the managed and inline policies that are attached to the role.
--
--
--
-- For each managed policy, this operation returns the ARN and policy name. For each inline policy, it returns the policy name and the entity to which it is attached. Inline policies do not have an ARN. For more information about these policy types, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_managed-vs-inline.html Managed policies and inline policies> in the /IAM User Guide/ .
--
-- Policies that are attached to users and roles as permissions boundaries are not returned. To view which managed policy is currently used to set the permissions boundary for a user or role, use the 'GetUser' or 'GetRole' operations.
module Network.AWS.IAM.ListPoliciesGrantingServiceAccess
  ( -- * Creating a Request
    listPoliciesGrantingServiceAccess,
    ListPoliciesGrantingServiceAccess,

    -- * Request Lenses
    lpgsaMarker,
    lpgsaARN,
    lpgsaServiceNamespaces,

    -- * Destructuring the Response
    listPoliciesGrantingServiceAccessResponse,
    ListPoliciesGrantingServiceAccessResponse,

    -- * Response Lenses
    lpgsarrsIsTruncated,
    lpgsarrsMarker,
    lpgsarrsResponseStatus,
    lpgsarrsPoliciesGrantingServiceAccess,
  )
where

import Network.AWS.IAM.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listPoliciesGrantingServiceAccess' smart constructor.
data ListPoliciesGrantingServiceAccess = ListPoliciesGrantingServiceAccess'
  { _lpgsaMarker ::
      !( Maybe
           Text
       ),
    _lpgsaARN ::
      !Text,
    _lpgsaServiceNamespaces ::
      !( List1
           Text
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListPoliciesGrantingServiceAccess' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpgsaMarker' - Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the @Marker@ element in the response that you received to indicate where the next call should start.
--
-- * 'lpgsaARN' - The ARN of the IAM identity (user, group, or role) whose policies you want to list.
--
-- * 'lpgsaServiceNamespaces' - The service namespace for the AWS services whose policies you want to list. To learn the service namespace for a service, see <https://docs.aws.amazon.com/service-authorization/latest/reference/reference_policies_actions-resources-contextkeys.html Actions, resources, and condition keys for AWS services> in the /IAM User Guide/ . Choose the name of the service to view details for that service. In the first paragraph, find the service prefix. For example, @(service prefix: a4b)@ . For more information about service namespaces, see <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces AWS service namespaces> in the /AWS General Reference/ .
listPoliciesGrantingServiceAccess ::
  -- | 'lpgsaARN'
  Text ->
  -- | 'lpgsaServiceNamespaces'
  NonEmpty Text ->
  ListPoliciesGrantingServiceAccess
listPoliciesGrantingServiceAccess
  pARN_
  pServiceNamespaces_ =
    ListPoliciesGrantingServiceAccess'
      { _lpgsaMarker =
          Nothing,
        _lpgsaARN = pARN_,
        _lpgsaServiceNamespaces =
          _List1 # pServiceNamespaces_
      }

-- | Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the @Marker@ element in the response that you received to indicate where the next call should start.
lpgsaMarker :: Lens' ListPoliciesGrantingServiceAccess (Maybe Text)
lpgsaMarker = lens _lpgsaMarker (\s a -> s {_lpgsaMarker = a})

-- | The ARN of the IAM identity (user, group, or role) whose policies you want to list.
lpgsaARN :: Lens' ListPoliciesGrantingServiceAccess Text
lpgsaARN = lens _lpgsaARN (\s a -> s {_lpgsaARN = a})

-- | The service namespace for the AWS services whose policies you want to list. To learn the service namespace for a service, see <https://docs.aws.amazon.com/service-authorization/latest/reference/reference_policies_actions-resources-contextkeys.html Actions, resources, and condition keys for AWS services> in the /IAM User Guide/ . Choose the name of the service to view details for that service. In the first paragraph, find the service prefix. For example, @(service prefix: a4b)@ . For more information about service namespaces, see <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces AWS service namespaces> in the /AWS General Reference/ .
lpgsaServiceNamespaces :: Lens' ListPoliciesGrantingServiceAccess (NonEmpty Text)
lpgsaServiceNamespaces = lens _lpgsaServiceNamespaces (\s a -> s {_lpgsaServiceNamespaces = a}) . _List1

instance AWSRequest ListPoliciesGrantingServiceAccess where
  type
    Rs ListPoliciesGrantingServiceAccess =
      ListPoliciesGrantingServiceAccessResponse
  request = postQuery iam
  response =
    receiveXMLWrapper
      "ListPoliciesGrantingServiceAccessResult"
      ( \s h x ->
          ListPoliciesGrantingServiceAccessResponse'
            <$> (x .@? "IsTruncated")
            <*> (x .@? "Marker")
            <*> (pure (fromEnum s))
            <*> ( x .@? "PoliciesGrantingServiceAccess" .!@ mempty
                    >>= parseXMLList "member"
                )
      )

instance Hashable ListPoliciesGrantingServiceAccess

instance NFData ListPoliciesGrantingServiceAccess

instance ToHeaders ListPoliciesGrantingServiceAccess where
  toHeaders = const mempty

instance ToPath ListPoliciesGrantingServiceAccess where
  toPath = const "/"

instance ToQuery ListPoliciesGrantingServiceAccess where
  toQuery ListPoliciesGrantingServiceAccess' {..} =
    mconcat
      [ "Action"
          =: ("ListPoliciesGrantingServiceAccess" :: ByteString),
        "Version" =: ("2010-05-08" :: ByteString),
        "Marker" =: _lpgsaMarker,
        "Arn" =: _lpgsaARN,
        "ServiceNamespaces"
          =: toQueryList "member" _lpgsaServiceNamespaces
      ]

-- | /See:/ 'listPoliciesGrantingServiceAccessResponse' smart constructor.
data ListPoliciesGrantingServiceAccessResponse = ListPoliciesGrantingServiceAccessResponse'
  { _lpgsarrsIsTruncated ::
      !( Maybe
           Bool
       ),
    _lpgsarrsMarker ::
      !( Maybe
           Text
       ),
    _lpgsarrsResponseStatus ::
      !Int,
    _lpgsarrsPoliciesGrantingServiceAccess ::
      ![ListPoliciesGrantingServiceAccessEntry]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListPoliciesGrantingServiceAccessResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpgsarrsIsTruncated' - A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the @Marker@ request parameter to retrieve more items. We recommend that you check @IsTruncated@ after every call to ensure that you receive all your results.
--
-- * 'lpgsarrsMarker' - When @IsTruncated@ is @true@ , this element is present and contains the value to use for the @Marker@ parameter in a subsequent pagination request.
--
-- * 'lpgsarrsResponseStatus' - -- | The response status code.
--
-- * 'lpgsarrsPoliciesGrantingServiceAccess' - A @ListPoliciesGrantingServiceAccess@ object that contains details about the permissions policies attached to the specified identity (user, group, or role).
listPoliciesGrantingServiceAccessResponse ::
  -- | 'lpgsarrsResponseStatus'
  Int ->
  ListPoliciesGrantingServiceAccessResponse
listPoliciesGrantingServiceAccessResponse
  pResponseStatus_ =
    ListPoliciesGrantingServiceAccessResponse'
      { _lpgsarrsIsTruncated =
          Nothing,
        _lpgsarrsMarker = Nothing,
        _lpgsarrsResponseStatus =
          pResponseStatus_,
        _lpgsarrsPoliciesGrantingServiceAccess =
          mempty
      }

-- | A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the @Marker@ request parameter to retrieve more items. We recommend that you check @IsTruncated@ after every call to ensure that you receive all your results.
lpgsarrsIsTruncated :: Lens' ListPoliciesGrantingServiceAccessResponse (Maybe Bool)
lpgsarrsIsTruncated = lens _lpgsarrsIsTruncated (\s a -> s {_lpgsarrsIsTruncated = a})

-- | When @IsTruncated@ is @true@ , this element is present and contains the value to use for the @Marker@ parameter in a subsequent pagination request.
lpgsarrsMarker :: Lens' ListPoliciesGrantingServiceAccessResponse (Maybe Text)
lpgsarrsMarker = lens _lpgsarrsMarker (\s a -> s {_lpgsarrsMarker = a})

-- | -- | The response status code.
lpgsarrsResponseStatus :: Lens' ListPoliciesGrantingServiceAccessResponse Int
lpgsarrsResponseStatus = lens _lpgsarrsResponseStatus (\s a -> s {_lpgsarrsResponseStatus = a})

-- | A @ListPoliciesGrantingServiceAccess@ object that contains details about the permissions policies attached to the specified identity (user, group, or role).
lpgsarrsPoliciesGrantingServiceAccess :: Lens' ListPoliciesGrantingServiceAccessResponse [ListPoliciesGrantingServiceAccessEntry]
lpgsarrsPoliciesGrantingServiceAccess = lens _lpgsarrsPoliciesGrantingServiceAccess (\s a -> s {_lpgsarrsPoliciesGrantingServiceAccess = a}) . _Coerce

instance
  NFData
    ListPoliciesGrantingServiceAccessResponse
