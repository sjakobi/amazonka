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
-- Module      : Network.AWS.IoT.ListPolicyVersions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the versions of the specified policy and identifies the default version.
module Network.AWS.IoT.ListPolicyVersions
  ( -- * Creating a Request
    listPolicyVersions,
    ListPolicyVersions,

    -- * Request Lenses
    lpvPolicyName,

    -- * Destructuring the Response
    listPolicyVersionsResponse,
    ListPolicyVersionsResponse,

    -- * Response Lenses
    lpvrrsPolicyVersions,
    lpvrrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | The input for the ListPolicyVersions operation.
--
--
--
-- /See:/ 'listPolicyVersions' smart constructor.
newtype ListPolicyVersions = ListPolicyVersions'
  { _lpvPolicyName ::
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

-- | Creates a value of 'ListPolicyVersions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpvPolicyName' - The policy name.
listPolicyVersions ::
  -- | 'lpvPolicyName'
  Text ->
  ListPolicyVersions
listPolicyVersions pPolicyName_ =
  ListPolicyVersions' {_lpvPolicyName = pPolicyName_}

-- | The policy name.
lpvPolicyName :: Lens' ListPolicyVersions Text
lpvPolicyName = lens _lpvPolicyName (\s a -> s {_lpvPolicyName = a})

instance AWSRequest ListPolicyVersions where
  type
    Rs ListPolicyVersions =
      ListPolicyVersionsResponse
  request = get ioT
  response =
    receiveJSON
      ( \s h x ->
          ListPolicyVersionsResponse'
            <$> (x .?> "policyVersions" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListPolicyVersions

instance NFData ListPolicyVersions

instance ToHeaders ListPolicyVersions where
  toHeaders = const mempty

instance ToPath ListPolicyVersions where
  toPath ListPolicyVersions' {..} =
    mconcat
      ["/policies/", toBS _lpvPolicyName, "/version"]

instance ToQuery ListPolicyVersions where
  toQuery = const mempty

-- | The output from the ListPolicyVersions operation.
--
--
--
-- /See:/ 'listPolicyVersionsResponse' smart constructor.
data ListPolicyVersionsResponse = ListPolicyVersionsResponse'
  { _lpvrrsPolicyVersions ::
      !( Maybe
           [PolicyVersion]
       ),
    _lpvrrsResponseStatus ::
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

-- | Creates a value of 'ListPolicyVersionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpvrrsPolicyVersions' - The policy versions.
--
-- * 'lpvrrsResponseStatus' - -- | The response status code.
listPolicyVersionsResponse ::
  -- | 'lpvrrsResponseStatus'
  Int ->
  ListPolicyVersionsResponse
listPolicyVersionsResponse pResponseStatus_ =
  ListPolicyVersionsResponse'
    { _lpvrrsPolicyVersions =
        Nothing,
      _lpvrrsResponseStatus = pResponseStatus_
    }

-- | The policy versions.
lpvrrsPolicyVersions :: Lens' ListPolicyVersionsResponse [PolicyVersion]
lpvrrsPolicyVersions = lens _lpvrrsPolicyVersions (\s a -> s {_lpvrrsPolicyVersions = a}) . _Default . _Coerce

-- | -- | The response status code.
lpvrrsResponseStatus :: Lens' ListPolicyVersionsResponse Int
lpvrrsResponseStatus = lens _lpvrrsResponseStatus (\s a -> s {_lpvrrsResponseStatus = a})

instance NFData ListPolicyVersionsResponse
