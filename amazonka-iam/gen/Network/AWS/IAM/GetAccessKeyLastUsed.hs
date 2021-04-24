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
-- Module      : Network.AWS.IAM.GetAccessKeyLastUsed
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about when the specified access key was last used. The information includes the date and time of last use, along with the AWS service and Region that were specified in the last request made with that key.
module Network.AWS.IAM.GetAccessKeyLastUsed
  ( -- * Creating a Request
    getAccessKeyLastUsed,
    GetAccessKeyLastUsed,

    -- * Request Lenses
    gakluAccessKeyId,

    -- * Destructuring the Response
    getAccessKeyLastUsedResponse,
    GetAccessKeyLastUsedResponse,

    -- * Response Lenses
    gaklurrsUserName,
    gaklurrsAccessKeyLastUsed,
    gaklurrsResponseStatus,
  )
where

import Network.AWS.IAM.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getAccessKeyLastUsed' smart constructor.
newtype GetAccessKeyLastUsed = GetAccessKeyLastUsed'
  { _gakluAccessKeyId ::
      AccessKey
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetAccessKeyLastUsed' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gakluAccessKeyId' - The identifier of an access key. This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters that can consist of any upper or lowercased letter or digit.
getAccessKeyLastUsed ::
  -- | 'gakluAccessKeyId'
  AccessKey ->
  GetAccessKeyLastUsed
getAccessKeyLastUsed pAccessKeyId_ =
  GetAccessKeyLastUsed'
    { _gakluAccessKeyId =
        pAccessKeyId_
    }

-- | The identifier of an access key. This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters that can consist of any upper or lowercased letter or digit.
gakluAccessKeyId :: Lens' GetAccessKeyLastUsed AccessKey
gakluAccessKeyId = lens _gakluAccessKeyId (\s a -> s {_gakluAccessKeyId = a})

instance AWSRequest GetAccessKeyLastUsed where
  type
    Rs GetAccessKeyLastUsed =
      GetAccessKeyLastUsedResponse
  request = postQuery iam
  response =
    receiveXMLWrapper
      "GetAccessKeyLastUsedResult"
      ( \s h x ->
          GetAccessKeyLastUsedResponse'
            <$> (x .@? "UserName")
            <*> (x .@? "AccessKeyLastUsed")
            <*> (pure (fromEnum s))
      )

instance Hashable GetAccessKeyLastUsed

instance NFData GetAccessKeyLastUsed

instance ToHeaders GetAccessKeyLastUsed where
  toHeaders = const mempty

instance ToPath GetAccessKeyLastUsed where
  toPath = const "/"

instance ToQuery GetAccessKeyLastUsed where
  toQuery GetAccessKeyLastUsed' {..} =
    mconcat
      [ "Action" =: ("GetAccessKeyLastUsed" :: ByteString),
        "Version" =: ("2010-05-08" :: ByteString),
        "AccessKeyId" =: _gakluAccessKeyId
      ]

-- | Contains the response to a successful 'GetAccessKeyLastUsed' request. It is also returned as a member of the 'AccessKeyMetaData' structure returned by the 'ListAccessKeys' action.
--
--
--
-- /See:/ 'getAccessKeyLastUsedResponse' smart constructor.
data GetAccessKeyLastUsedResponse = GetAccessKeyLastUsedResponse'
  { _gaklurrsUserName ::
      !(Maybe Text),
    _gaklurrsAccessKeyLastUsed ::
      !( Maybe
           AccessKeyLastUsed
       ),
    _gaklurrsResponseStatus ::
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

-- | Creates a value of 'GetAccessKeyLastUsedResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gaklurrsUserName' - The name of the AWS IAM user that owns this access key.
--
-- * 'gaklurrsAccessKeyLastUsed' - Contains information about the last time the access key was used.
--
-- * 'gaklurrsResponseStatus' - -- | The response status code.
getAccessKeyLastUsedResponse ::
  -- | 'gaklurrsResponseStatus'
  Int ->
  GetAccessKeyLastUsedResponse
getAccessKeyLastUsedResponse pResponseStatus_ =
  GetAccessKeyLastUsedResponse'
    { _gaklurrsUserName =
        Nothing,
      _gaklurrsAccessKeyLastUsed = Nothing,
      _gaklurrsResponseStatus = pResponseStatus_
    }

-- | The name of the AWS IAM user that owns this access key.
gaklurrsUserName :: Lens' GetAccessKeyLastUsedResponse (Maybe Text)
gaklurrsUserName = lens _gaklurrsUserName (\s a -> s {_gaklurrsUserName = a})

-- | Contains information about the last time the access key was used.
gaklurrsAccessKeyLastUsed :: Lens' GetAccessKeyLastUsedResponse (Maybe AccessKeyLastUsed)
gaklurrsAccessKeyLastUsed = lens _gaklurrsAccessKeyLastUsed (\s a -> s {_gaklurrsAccessKeyLastUsed = a})

-- | -- | The response status code.
gaklurrsResponseStatus :: Lens' GetAccessKeyLastUsedResponse Int
gaklurrsResponseStatus = lens _gaklurrsResponseStatus (\s a -> s {_gaklurrsResponseStatus = a})

instance NFData GetAccessKeyLastUsedResponse
