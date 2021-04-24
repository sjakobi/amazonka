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
-- Module      : Network.AWS.SSM.DeleteParameters
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete a list of parameters.
module Network.AWS.SSM.DeleteParameters
  ( -- * Creating a Request
    deleteParameters,
    DeleteParameters,

    -- * Request Lenses
    dpNames,

    -- * Destructuring the Response
    deleteParametersResponse,
    DeleteParametersResponse,

    -- * Response Lenses
    ddrsInvalidParameters,
    ddrsDeletedParameters,
    ddrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'deleteParameters' smart constructor.
newtype DeleteParameters = DeleteParameters'
  { _dpNames ::
      List1 Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteParameters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpNames' - The names of the parameters to delete.
deleteParameters ::
  -- | 'dpNames'
  NonEmpty Text ->
  DeleteParameters
deleteParameters pNames_ =
  DeleteParameters' {_dpNames = _List1 # pNames_}

-- | The names of the parameters to delete.
dpNames :: Lens' DeleteParameters (NonEmpty Text)
dpNames = lens _dpNames (\s a -> s {_dpNames = a}) . _List1

instance AWSRequest DeleteParameters where
  type Rs DeleteParameters = DeleteParametersResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          DeleteParametersResponse'
            <$> (x .?> "InvalidParameters")
            <*> (x .?> "DeletedParameters")
            <*> (pure (fromEnum s))
      )

instance Hashable DeleteParameters

instance NFData DeleteParameters

instance ToHeaders DeleteParameters where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonSSM.DeleteParameters" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteParameters where
  toJSON DeleteParameters' {..} =
    object (catMaybes [Just ("Names" .= _dpNames)])

instance ToPath DeleteParameters where
  toPath = const "/"

instance ToQuery DeleteParameters where
  toQuery = const mempty

-- | /See:/ 'deleteParametersResponse' smart constructor.
data DeleteParametersResponse = DeleteParametersResponse'
  { _ddrsInvalidParameters ::
      !(Maybe (List1 Text)),
    _ddrsDeletedParameters ::
      !(Maybe (List1 Text)),
    _ddrsResponseStatus ::
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

-- | Creates a value of 'DeleteParametersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddrsInvalidParameters' - The names of parameters that weren't deleted because the parameters are not valid.
--
-- * 'ddrsDeletedParameters' - The names of the deleted parameters.
--
-- * 'ddrsResponseStatus' - -- | The response status code.
deleteParametersResponse ::
  -- | 'ddrsResponseStatus'
  Int ->
  DeleteParametersResponse
deleteParametersResponse pResponseStatus_ =
  DeleteParametersResponse'
    { _ddrsInvalidParameters =
        Nothing,
      _ddrsDeletedParameters = Nothing,
      _ddrsResponseStatus = pResponseStatus_
    }

-- | The names of parameters that weren't deleted because the parameters are not valid.
ddrsInvalidParameters :: Lens' DeleteParametersResponse (Maybe (NonEmpty Text))
ddrsInvalidParameters = lens _ddrsInvalidParameters (\s a -> s {_ddrsInvalidParameters = a}) . mapping _List1

-- | The names of the deleted parameters.
ddrsDeletedParameters :: Lens' DeleteParametersResponse (Maybe (NonEmpty Text))
ddrsDeletedParameters = lens _ddrsDeletedParameters (\s a -> s {_ddrsDeletedParameters = a}) . mapping _List1

-- | -- | The response status code.
ddrsResponseStatus :: Lens' DeleteParametersResponse Int
ddrsResponseStatus = lens _ddrsResponseStatus (\s a -> s {_ddrsResponseStatus = a})

instance NFData DeleteParametersResponse
