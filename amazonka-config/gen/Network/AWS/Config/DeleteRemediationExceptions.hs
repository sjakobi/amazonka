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
-- Module      : Network.AWS.Config.DeleteRemediationExceptions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes one or more remediation exceptions mentioned in the resource keys.
module Network.AWS.Config.DeleteRemediationExceptions
  ( -- * Creating a Request
    deleteRemediationExceptions,
    DeleteRemediationExceptions,

    -- * Request Lenses
    delConfigRuleName,
    delResourceKeys,

    -- * Destructuring the Response
    deleteRemediationExceptionsResponse,
    DeleteRemediationExceptionsResponse,

    -- * Response Lenses
    drerrsFailedBatches,
    drerrsResponseStatus,
  )
where

import Network.AWS.Config.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteRemediationExceptions' smart constructor.
data DeleteRemediationExceptions = DeleteRemediationExceptions'
  { _delConfigRuleName ::
      !Text,
    _delResourceKeys ::
      !( List1
           RemediationExceptionResourceKey
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

-- | Creates a value of 'DeleteRemediationExceptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'delConfigRuleName' - The name of the AWS Config rule for which you want to delete remediation exception configuration.
--
-- * 'delResourceKeys' - An exception list of resource exception keys to be processed with the current request. AWS Config adds exception for each resource key. For example, AWS Config adds 3 exceptions for 3 resource keys.
deleteRemediationExceptions ::
  -- | 'delConfigRuleName'
  Text ->
  -- | 'delResourceKeys'
  NonEmpty RemediationExceptionResourceKey ->
  DeleteRemediationExceptions
deleteRemediationExceptions
  pConfigRuleName_
  pResourceKeys_ =
    DeleteRemediationExceptions'
      { _delConfigRuleName =
          pConfigRuleName_,
        _delResourceKeys = _List1 # pResourceKeys_
      }

-- | The name of the AWS Config rule for which you want to delete remediation exception configuration.
delConfigRuleName :: Lens' DeleteRemediationExceptions Text
delConfigRuleName = lens _delConfigRuleName (\s a -> s {_delConfigRuleName = a})

-- | An exception list of resource exception keys to be processed with the current request. AWS Config adds exception for each resource key. For example, AWS Config adds 3 exceptions for 3 resource keys.
delResourceKeys :: Lens' DeleteRemediationExceptions (NonEmpty RemediationExceptionResourceKey)
delResourceKeys = lens _delResourceKeys (\s a -> s {_delResourceKeys = a}) . _List1

instance AWSRequest DeleteRemediationExceptions where
  type
    Rs DeleteRemediationExceptions =
      DeleteRemediationExceptionsResponse
  request = postJSON config
  response =
    receiveJSON
      ( \s h x ->
          DeleteRemediationExceptionsResponse'
            <$> (x .?> "FailedBatches" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DeleteRemediationExceptions

instance NFData DeleteRemediationExceptions

instance ToHeaders DeleteRemediationExceptions where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "StarlingDoveService.DeleteRemediationExceptions" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteRemediationExceptions where
  toJSON DeleteRemediationExceptions' {..} =
    object
      ( catMaybes
          [ Just ("ConfigRuleName" .= _delConfigRuleName),
            Just ("ResourceKeys" .= _delResourceKeys)
          ]
      )

instance ToPath DeleteRemediationExceptions where
  toPath = const "/"

instance ToQuery DeleteRemediationExceptions where
  toQuery = const mempty

-- | /See:/ 'deleteRemediationExceptionsResponse' smart constructor.
data DeleteRemediationExceptionsResponse = DeleteRemediationExceptionsResponse'
  { _drerrsFailedBatches ::
      !( Maybe
           [FailedDeleteRemediationExceptionsBatch]
       ),
    _drerrsResponseStatus ::
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

-- | Creates a value of 'DeleteRemediationExceptionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drerrsFailedBatches' - Returns a list of failed delete remediation exceptions batch objects. Each object in the batch consists of a list of failed items and failure messages.
--
-- * 'drerrsResponseStatus' - -- | The response status code.
deleteRemediationExceptionsResponse ::
  -- | 'drerrsResponseStatus'
  Int ->
  DeleteRemediationExceptionsResponse
deleteRemediationExceptionsResponse pResponseStatus_ =
  DeleteRemediationExceptionsResponse'
    { _drerrsFailedBatches =
        Nothing,
      _drerrsResponseStatus =
        pResponseStatus_
    }

-- | Returns a list of failed delete remediation exceptions batch objects. Each object in the batch consists of a list of failed items and failure messages.
drerrsFailedBatches :: Lens' DeleteRemediationExceptionsResponse [FailedDeleteRemediationExceptionsBatch]
drerrsFailedBatches = lens _drerrsFailedBatches (\s a -> s {_drerrsFailedBatches = a}) . _Default . _Coerce

-- | -- | The response status code.
drerrsResponseStatus :: Lens' DeleteRemediationExceptionsResponse Int
drerrsResponseStatus = lens _drerrsResponseStatus (\s a -> s {_drerrsResponseStatus = a})

instance NFData DeleteRemediationExceptionsResponse
