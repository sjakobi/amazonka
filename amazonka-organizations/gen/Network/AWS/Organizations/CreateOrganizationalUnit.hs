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
-- Module      : Network.AWS.Organizations.CreateOrganizationalUnit
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an organizational unit (OU) within a root or parent OU. An OU is a container for accounts that enables you to organize your accounts to apply policies according to your business requirements. The number of levels deep that you can nest OUs is dependent upon the policy types enabled for that root. For service control policies, the limit is five.
--
--
-- For more information about OUs, see <https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_ous.html Managing Organizational Units> in the /AWS Organizations User Guide./
--
-- If the request includes tags, then the requester must have the @organizations:TagResource@ permission.
--
-- This operation can be called only from the organization's management account.
module Network.AWS.Organizations.CreateOrganizationalUnit
  ( -- * Creating a Request
    createOrganizationalUnit,
    CreateOrganizationalUnit,

    -- * Request Lenses
    couTags,
    couParentId,
    couName,

    -- * Destructuring the Response
    createOrganizationalUnitResponse,
    CreateOrganizationalUnitResponse,

    -- * Response Lenses
    courrsOrganizationalUnit,
    courrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Organizations.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createOrganizationalUnit' smart constructor.
data CreateOrganizationalUnit = CreateOrganizationalUnit'
  { _couTags ::
      !(Maybe [Tag]),
    _couParentId :: !Text,
    _couName :: !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateOrganizationalUnit' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'couTags' - A list of tags that you want to attach to the newly created OU. For each tag in the list, you must specify both a tag key and a value. You can set the value to an empty string, but you can't set it to @null@ . For more information about tagging, see <https://docs.aws.amazon.com/organizations/latest/userguide/orgs_tagging.html Tagging AWS Organizations resources> in the AWS Organizations User Guide.
--
-- * 'couParentId' - The unique identifier (ID) of the parent root or OU that you want to create the new OU in. The <http://wikipedia.org/wiki/regex regex pattern> for a parent ID string requires one of the following:     * __Root__ - A string that begins with "r-" followed by from 4 to 32 lowercase letters or digits.     * __Organizational unit (OU)__ - A string that begins with "ou-" followed by from 4 to 32 lowercase letters or digits (the ID of the root that the OU is in). This string is followed by a second "-" dash and from 8 to 32 additional lowercase letters or digits.
--
-- * 'couName' - The friendly name to assign to the new OU.
createOrganizationalUnit ::
  -- | 'couParentId'
  Text ->
  -- | 'couName'
  Text ->
  CreateOrganizationalUnit
createOrganizationalUnit pParentId_ pName_ =
  CreateOrganizationalUnit'
    { _couTags = Nothing,
      _couParentId = pParentId_,
      _couName = pName_
    }

-- | A list of tags that you want to attach to the newly created OU. For each tag in the list, you must specify both a tag key and a value. You can set the value to an empty string, but you can't set it to @null@ . For more information about tagging, see <https://docs.aws.amazon.com/organizations/latest/userguide/orgs_tagging.html Tagging AWS Organizations resources> in the AWS Organizations User Guide.
couTags :: Lens' CreateOrganizationalUnit [Tag]
couTags = lens _couTags (\s a -> s {_couTags = a}) . _Default . _Coerce

-- | The unique identifier (ID) of the parent root or OU that you want to create the new OU in. The <http://wikipedia.org/wiki/regex regex pattern> for a parent ID string requires one of the following:     * __Root__ - A string that begins with "r-" followed by from 4 to 32 lowercase letters or digits.     * __Organizational unit (OU)__ - A string that begins with "ou-" followed by from 4 to 32 lowercase letters or digits (the ID of the root that the OU is in). This string is followed by a second "-" dash and from 8 to 32 additional lowercase letters or digits.
couParentId :: Lens' CreateOrganizationalUnit Text
couParentId = lens _couParentId (\s a -> s {_couParentId = a})

-- | The friendly name to assign to the new OU.
couName :: Lens' CreateOrganizationalUnit Text
couName = lens _couName (\s a -> s {_couName = a})

instance AWSRequest CreateOrganizationalUnit where
  type
    Rs CreateOrganizationalUnit =
      CreateOrganizationalUnitResponse
  request = postJSON organizations
  response =
    receiveJSON
      ( \s h x ->
          CreateOrganizationalUnitResponse'
            <$> (x .?> "OrganizationalUnit") <*> (pure (fromEnum s))
      )

instance Hashable CreateOrganizationalUnit

instance NFData CreateOrganizationalUnit

instance ToHeaders CreateOrganizationalUnit where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSOrganizationsV20161128.CreateOrganizationalUnit" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateOrganizationalUnit where
  toJSON CreateOrganizationalUnit' {..} =
    object
      ( catMaybes
          [ ("Tags" .=) <$> _couTags,
            Just ("ParentId" .= _couParentId),
            Just ("Name" .= _couName)
          ]
      )

instance ToPath CreateOrganizationalUnit where
  toPath = const "/"

instance ToQuery CreateOrganizationalUnit where
  toQuery = const mempty

-- | /See:/ 'createOrganizationalUnitResponse' smart constructor.
data CreateOrganizationalUnitResponse = CreateOrganizationalUnitResponse'
  { _courrsOrganizationalUnit ::
      !( Maybe
           OrganizationalUnit
       ),
    _courrsResponseStatus ::
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

-- | Creates a value of 'CreateOrganizationalUnitResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'courrsOrganizationalUnit' - A structure that contains details about the newly created OU.
--
-- * 'courrsResponseStatus' - -- | The response status code.
createOrganizationalUnitResponse ::
  -- | 'courrsResponseStatus'
  Int ->
  CreateOrganizationalUnitResponse
createOrganizationalUnitResponse pResponseStatus_ =
  CreateOrganizationalUnitResponse'
    { _courrsOrganizationalUnit =
        Nothing,
      _courrsResponseStatus = pResponseStatus_
    }

-- | A structure that contains details about the newly created OU.
courrsOrganizationalUnit :: Lens' CreateOrganizationalUnitResponse (Maybe OrganizationalUnit)
courrsOrganizationalUnit = lens _courrsOrganizationalUnit (\s a -> s {_courrsOrganizationalUnit = a})

-- | -- | The response status code.
courrsResponseStatus :: Lens' CreateOrganizationalUnitResponse Int
courrsResponseStatus = lens _courrsResponseStatus (\s a -> s {_courrsResponseStatus = a})

instance NFData CreateOrganizationalUnitResponse
