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
-- Module      : Network.AWS.WorkMail.ListAccessControlRules
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the access control rules for the specified organization.
module Network.AWS.WorkMail.ListAccessControlRules
  ( -- * Creating a Request
    listAccessControlRules,
    ListAccessControlRules,

    -- * Request Lenses
    lacrOrganizationId,

    -- * Destructuring the Response
    listAccessControlRulesResponse,
    ListAccessControlRulesResponse,

    -- * Response Lenses
    lacrrrsRules,
    lacrrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.WorkMail.Types

-- | /See:/ 'listAccessControlRules' smart constructor.
newtype ListAccessControlRules = ListAccessControlRules'
  { _lacrOrganizationId ::
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

-- | Creates a value of 'ListAccessControlRules' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lacrOrganizationId' - The identifier for the organization.
listAccessControlRules ::
  -- | 'lacrOrganizationId'
  Text ->
  ListAccessControlRules
listAccessControlRules pOrganizationId_ =
  ListAccessControlRules'
    { _lacrOrganizationId =
        pOrganizationId_
    }

-- | The identifier for the organization.
lacrOrganizationId :: Lens' ListAccessControlRules Text
lacrOrganizationId = lens _lacrOrganizationId (\s a -> s {_lacrOrganizationId = a})

instance AWSRequest ListAccessControlRules where
  type
    Rs ListAccessControlRules =
      ListAccessControlRulesResponse
  request = postJSON workMail
  response =
    receiveJSON
      ( \s h x ->
          ListAccessControlRulesResponse'
            <$> (x .?> "Rules" .!@ mempty) <*> (pure (fromEnum s))
      )

instance Hashable ListAccessControlRules

instance NFData ListAccessControlRules

instance ToHeaders ListAccessControlRules where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "WorkMailService.ListAccessControlRules" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListAccessControlRules where
  toJSON ListAccessControlRules' {..} =
    object
      ( catMaybes
          [Just ("OrganizationId" .= _lacrOrganizationId)]
      )

instance ToPath ListAccessControlRules where
  toPath = const "/"

instance ToQuery ListAccessControlRules where
  toQuery = const mempty

-- | /See:/ 'listAccessControlRulesResponse' smart constructor.
data ListAccessControlRulesResponse = ListAccessControlRulesResponse'
  { _lacrrrsRules ::
      !( Maybe
           [AccessControlRule]
       ),
    _lacrrrsResponseStatus ::
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

-- | Creates a value of 'ListAccessControlRulesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lacrrrsRules' - The access control rules.
--
-- * 'lacrrrsResponseStatus' - -- | The response status code.
listAccessControlRulesResponse ::
  -- | 'lacrrrsResponseStatus'
  Int ->
  ListAccessControlRulesResponse
listAccessControlRulesResponse pResponseStatus_ =
  ListAccessControlRulesResponse'
    { _lacrrrsRules =
        Nothing,
      _lacrrrsResponseStatus = pResponseStatus_
    }

-- | The access control rules.
lacrrrsRules :: Lens' ListAccessControlRulesResponse [AccessControlRule]
lacrrrsRules = lens _lacrrrsRules (\s a -> s {_lacrrrsRules = a}) . _Default . _Coerce

-- | -- | The response status code.
lacrrrsResponseStatus :: Lens' ListAccessControlRulesResponse Int
lacrrrsResponseStatus = lens _lacrrrsResponseStatus (\s a -> s {_lacrrrsResponseStatus = a})

instance NFData ListAccessControlRulesResponse
