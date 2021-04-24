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
-- Module      : Network.AWS.Glacier.GetDataRetrievalPolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This operation returns the current data retrieval policy for the account and region specified in the GET request. For more information about data retrieval policies, see <https://docs.aws.amazon.com/amazonglacier/latest/dev/data-retrieval-policy.html Amazon Glacier Data Retrieval Policies> .
module Network.AWS.Glacier.GetDataRetrievalPolicy
  ( -- * Creating a Request
    getDataRetrievalPolicy,
    GetDataRetrievalPolicy,

    -- * Request Lenses
    gdrpAccountId,

    -- * Destructuring the Response
    getDataRetrievalPolicyResponse,
    GetDataRetrievalPolicyResponse,

    -- * Response Lenses
    gdrprrsPolicy,
    gdrprrsResponseStatus,
  )
where

import Network.AWS.Glacier.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Input for GetDataRetrievalPolicy.
--
--
--
-- /See:/ 'getDataRetrievalPolicy' smart constructor.
newtype GetDataRetrievalPolicy = GetDataRetrievalPolicy'
  { _gdrpAccountId ::
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

-- | Creates a value of 'GetDataRetrievalPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdrpAccountId' - The @AccountId@ value is the AWS account ID. This value must match the AWS account ID associated with the credentials used to sign the request. You can either specify an AWS account ID or optionally a single '@-@ ' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you specify your account ID, do not include any hyphens ('-') in the ID.
getDataRetrievalPolicy ::
  -- | 'gdrpAccountId'
  Text ->
  GetDataRetrievalPolicy
getDataRetrievalPolicy pAccountId_ =
  GetDataRetrievalPolicy'
    { _gdrpAccountId =
        pAccountId_
    }

-- | The @AccountId@ value is the AWS account ID. This value must match the AWS account ID associated with the credentials used to sign the request. You can either specify an AWS account ID or optionally a single '@-@ ' (hyphen), in which case Amazon Glacier uses the AWS account ID associated with the credentials used to sign the request. If you specify your account ID, do not include any hyphens ('-') in the ID.
gdrpAccountId :: Lens' GetDataRetrievalPolicy Text
gdrpAccountId = lens _gdrpAccountId (\s a -> s {_gdrpAccountId = a})

instance AWSRequest GetDataRetrievalPolicy where
  type
    Rs GetDataRetrievalPolicy =
      GetDataRetrievalPolicyResponse
  request = get glacier
  response =
    receiveJSON
      ( \s h x ->
          GetDataRetrievalPolicyResponse'
            <$> (x .?> "Policy") <*> (pure (fromEnum s))
      )

instance Hashable GetDataRetrievalPolicy

instance NFData GetDataRetrievalPolicy

instance ToHeaders GetDataRetrievalPolicy where
  toHeaders = const mempty

instance ToPath GetDataRetrievalPolicy where
  toPath GetDataRetrievalPolicy' {..} =
    mconcat
      [ "/",
        toBS _gdrpAccountId,
        "/policies/data-retrieval"
      ]

instance ToQuery GetDataRetrievalPolicy where
  toQuery = const mempty

-- | Contains the Amazon S3 Glacier response to the @GetDataRetrievalPolicy@ request.
--
--
--
-- /See:/ 'getDataRetrievalPolicyResponse' smart constructor.
data GetDataRetrievalPolicyResponse = GetDataRetrievalPolicyResponse'
  { _gdrprrsPolicy ::
      !( Maybe
           DataRetrievalPolicy
       ),
    _gdrprrsResponseStatus ::
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

-- | Creates a value of 'GetDataRetrievalPolicyResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdrprrsPolicy' - Contains the returned data retrieval policy in JSON format.
--
-- * 'gdrprrsResponseStatus' - -- | The response status code.
getDataRetrievalPolicyResponse ::
  -- | 'gdrprrsResponseStatus'
  Int ->
  GetDataRetrievalPolicyResponse
getDataRetrievalPolicyResponse pResponseStatus_ =
  GetDataRetrievalPolicyResponse'
    { _gdrprrsPolicy =
        Nothing,
      _gdrprrsResponseStatus = pResponseStatus_
    }

-- | Contains the returned data retrieval policy in JSON format.
gdrprrsPolicy :: Lens' GetDataRetrievalPolicyResponse (Maybe DataRetrievalPolicy)
gdrprrsPolicy = lens _gdrprrsPolicy (\s a -> s {_gdrprrsPolicy = a})

-- | -- | The response status code.
gdrprrsResponseStatus :: Lens' GetDataRetrievalPolicyResponse Int
gdrprrsResponseStatus = lens _gdrprrsResponseStatus (\s a -> s {_gdrprrsResponseStatus = a})

instance NFData GetDataRetrievalPolicyResponse
