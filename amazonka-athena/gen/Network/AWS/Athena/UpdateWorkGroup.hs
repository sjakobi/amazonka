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
-- Module      : Network.AWS.Athena.UpdateWorkGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the workgroup with the specified name. The workgroup's name cannot be changed.
module Network.AWS.Athena.UpdateWorkGroup
  ( -- * Creating a Request
    updateWorkGroup,
    UpdateWorkGroup,

    -- * Request Lenses
    uwgConfigurationUpdates,
    uwgState,
    uwgDescription,
    uwgWorkGroup,

    -- * Destructuring the Response
    updateWorkGroupResponse,
    UpdateWorkGroupResponse,

    -- * Response Lenses
    uwgrrsResponseStatus,
  )
where

import Network.AWS.Athena.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateWorkGroup' smart constructor.
data UpdateWorkGroup = UpdateWorkGroup'
  { _uwgConfigurationUpdates ::
      !(Maybe WorkGroupConfigurationUpdates),
    _uwgState :: !(Maybe WorkGroupState),
    _uwgDescription :: !(Maybe Text),
    _uwgWorkGroup :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateWorkGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uwgConfigurationUpdates' - The workgroup configuration that will be updated for the given workgroup.
--
-- * 'uwgState' - The workgroup state that will be updated for the given workgroup.
--
-- * 'uwgDescription' - The workgroup description.
--
-- * 'uwgWorkGroup' - The specified workgroup that will be updated.
updateWorkGroup ::
  -- | 'uwgWorkGroup'
  Text ->
  UpdateWorkGroup
updateWorkGroup pWorkGroup_ =
  UpdateWorkGroup'
    { _uwgConfigurationUpdates =
        Nothing,
      _uwgState = Nothing,
      _uwgDescription = Nothing,
      _uwgWorkGroup = pWorkGroup_
    }

-- | The workgroup configuration that will be updated for the given workgroup.
uwgConfigurationUpdates :: Lens' UpdateWorkGroup (Maybe WorkGroupConfigurationUpdates)
uwgConfigurationUpdates = lens _uwgConfigurationUpdates (\s a -> s {_uwgConfigurationUpdates = a})

-- | The workgroup state that will be updated for the given workgroup.
uwgState :: Lens' UpdateWorkGroup (Maybe WorkGroupState)
uwgState = lens _uwgState (\s a -> s {_uwgState = a})

-- | The workgroup description.
uwgDescription :: Lens' UpdateWorkGroup (Maybe Text)
uwgDescription = lens _uwgDescription (\s a -> s {_uwgDescription = a})

-- | The specified workgroup that will be updated.
uwgWorkGroup :: Lens' UpdateWorkGroup Text
uwgWorkGroup = lens _uwgWorkGroup (\s a -> s {_uwgWorkGroup = a})

instance AWSRequest UpdateWorkGroup where
  type Rs UpdateWorkGroup = UpdateWorkGroupResponse
  request = postJSON athena
  response =
    receiveEmpty
      ( \s h x ->
          UpdateWorkGroupResponse' <$> (pure (fromEnum s))
      )

instance Hashable UpdateWorkGroup

instance NFData UpdateWorkGroup

instance ToHeaders UpdateWorkGroup where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonAthena.UpdateWorkGroup" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateWorkGroup where
  toJSON UpdateWorkGroup' {..} =
    object
      ( catMaybes
          [ ("ConfigurationUpdates" .=)
              <$> _uwgConfigurationUpdates,
            ("State" .=) <$> _uwgState,
            ("Description" .=) <$> _uwgDescription,
            Just ("WorkGroup" .= _uwgWorkGroup)
          ]
      )

instance ToPath UpdateWorkGroup where
  toPath = const "/"

instance ToQuery UpdateWorkGroup where
  toQuery = const mempty

-- | /See:/ 'updateWorkGroupResponse' smart constructor.
newtype UpdateWorkGroupResponse = UpdateWorkGroupResponse'
  { _uwgrrsResponseStatus ::
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

-- | Creates a value of 'UpdateWorkGroupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uwgrrsResponseStatus' - -- | The response status code.
updateWorkGroupResponse ::
  -- | 'uwgrrsResponseStatus'
  Int ->
  UpdateWorkGroupResponse
updateWorkGroupResponse pResponseStatus_ =
  UpdateWorkGroupResponse'
    { _uwgrrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
uwgrrsResponseStatus :: Lens' UpdateWorkGroupResponse Int
uwgrrsResponseStatus = lens _uwgrrsResponseStatus (\s a -> s {_uwgrrsResponseStatus = a})

instance NFData UpdateWorkGroupResponse
