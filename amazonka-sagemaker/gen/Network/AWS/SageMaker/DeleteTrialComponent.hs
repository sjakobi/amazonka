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
-- Module      : Network.AWS.SageMaker.DeleteTrialComponent
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified trial component. A trial component must be disassociated from all trials before the trial component can be deleted. To disassociate a trial component from a trial, call the 'DisassociateTrialComponent' API.
module Network.AWS.SageMaker.DeleteTrialComponent
  ( -- * Creating a Request
    deleteTrialComponent,
    DeleteTrialComponent,

    -- * Request Lenses
    dTrialComponentName,

    -- * Destructuring the Response
    deleteTrialComponentResponse,
    DeleteTrialComponentResponse,

    -- * Response Lenses
    dtcrtrsTrialComponentARN,
    dtcrtrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'deleteTrialComponent' smart constructor.
newtype DeleteTrialComponent = DeleteTrialComponent'
  { _dTrialComponentName ::
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

-- | Creates a value of 'DeleteTrialComponent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dTrialComponentName' - The name of the component to delete.
deleteTrialComponent ::
  -- | 'dTrialComponentName'
  Text ->
  DeleteTrialComponent
deleteTrialComponent pTrialComponentName_ =
  DeleteTrialComponent'
    { _dTrialComponentName =
        pTrialComponentName_
    }

-- | The name of the component to delete.
dTrialComponentName :: Lens' DeleteTrialComponent Text
dTrialComponentName = lens _dTrialComponentName (\s a -> s {_dTrialComponentName = a})

instance AWSRequest DeleteTrialComponent where
  type
    Rs DeleteTrialComponent =
      DeleteTrialComponentResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          DeleteTrialComponentResponse'
            <$> (x .?> "TrialComponentArn") <*> (pure (fromEnum s))
      )

instance Hashable DeleteTrialComponent

instance NFData DeleteTrialComponent

instance ToHeaders DeleteTrialComponent where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.DeleteTrialComponent" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteTrialComponent where
  toJSON DeleteTrialComponent' {..} =
    object
      ( catMaybes
          [ Just
              ("TrialComponentName" .= _dTrialComponentName)
          ]
      )

instance ToPath DeleteTrialComponent where
  toPath = const "/"

instance ToQuery DeleteTrialComponent where
  toQuery = const mempty

-- | /See:/ 'deleteTrialComponentResponse' smart constructor.
data DeleteTrialComponentResponse = DeleteTrialComponentResponse'
  { _dtcrtrsTrialComponentARN ::
      !(Maybe Text),
    _dtcrtrsResponseStatus ::
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

-- | Creates a value of 'DeleteTrialComponentResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtcrtrsTrialComponentARN' - The Amazon Resource Name (ARN) of the component is being deleted.
--
-- * 'dtcrtrsResponseStatus' - -- | The response status code.
deleteTrialComponentResponse ::
  -- | 'dtcrtrsResponseStatus'
  Int ->
  DeleteTrialComponentResponse
deleteTrialComponentResponse pResponseStatus_ =
  DeleteTrialComponentResponse'
    { _dtcrtrsTrialComponentARN =
        Nothing,
      _dtcrtrsResponseStatus = pResponseStatus_
    }

-- | The Amazon Resource Name (ARN) of the component is being deleted.
dtcrtrsTrialComponentARN :: Lens' DeleteTrialComponentResponse (Maybe Text)
dtcrtrsTrialComponentARN = lens _dtcrtrsTrialComponentARN (\s a -> s {_dtcrtrsTrialComponentARN = a})

-- | -- | The response status code.
dtcrtrsResponseStatus :: Lens' DeleteTrialComponentResponse Int
dtcrtrsResponseStatus = lens _dtcrtrsResponseStatus (\s a -> s {_dtcrtrsResponseStatus = a})

instance NFData DeleteTrialComponentResponse
