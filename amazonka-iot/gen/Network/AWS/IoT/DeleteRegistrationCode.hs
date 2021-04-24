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
-- Module      : Network.AWS.IoT.DeleteRegistrationCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a CA certificate registration code.
module Network.AWS.IoT.DeleteRegistrationCode
  ( -- * Creating a Request
    deleteRegistrationCode,
    DeleteRegistrationCode,

    -- * Destructuring the Response
    deleteRegistrationCodeResponse,
    DeleteRegistrationCodeResponse,

    -- * Response Lenses
    drcrrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | The input for the DeleteRegistrationCode operation.
--
--
--
-- /See:/ 'deleteRegistrationCode' smart constructor.
data DeleteRegistrationCode = DeleteRegistrationCode'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteRegistrationCode' with the minimum fields required to make a request.
deleteRegistrationCode ::
  DeleteRegistrationCode
deleteRegistrationCode = DeleteRegistrationCode'

instance AWSRequest DeleteRegistrationCode where
  type
    Rs DeleteRegistrationCode =
      DeleteRegistrationCodeResponse
  request = delete ioT
  response =
    receiveEmpty
      ( \s h x ->
          DeleteRegistrationCodeResponse'
            <$> (pure (fromEnum s))
      )

instance Hashable DeleteRegistrationCode

instance NFData DeleteRegistrationCode

instance ToHeaders DeleteRegistrationCode where
  toHeaders = const mempty

instance ToPath DeleteRegistrationCode where
  toPath = const "/registrationcode"

instance ToQuery DeleteRegistrationCode where
  toQuery = const mempty

-- | The output for the DeleteRegistrationCode operation.
--
--
--
-- /See:/ 'deleteRegistrationCodeResponse' smart constructor.
newtype DeleteRegistrationCodeResponse = DeleteRegistrationCodeResponse'
  { _drcrrsResponseStatus ::
      Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteRegistrationCodeResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drcrrsResponseStatus' - -- | The response status code.
deleteRegistrationCodeResponse ::
  -- | 'drcrrsResponseStatus'
  Int ->
  DeleteRegistrationCodeResponse
deleteRegistrationCodeResponse pResponseStatus_ =
  DeleteRegistrationCodeResponse'
    { _drcrrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
drcrrsResponseStatus :: Lens' DeleteRegistrationCodeResponse Int
drcrrsResponseStatus = lens _drcrrsResponseStatus (\s a -> s {_drcrrsResponseStatus = a})

instance NFData DeleteRegistrationCodeResponse
