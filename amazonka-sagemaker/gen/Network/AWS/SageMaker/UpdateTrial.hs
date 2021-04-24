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
-- Module      : Network.AWS.SageMaker.UpdateTrial
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the display name of a trial.
module Network.AWS.SageMaker.UpdateTrial
  ( -- * Creating a Request
    updateTrial,
    UpdateTrial,

    -- * Request Lenses
    utDisplayName,
    utTrialName,

    -- * Destructuring the Response
    updateTrialResponse,
    UpdateTrialResponse,

    -- * Response Lenses
    utrrsTrialARN,
    utrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'updateTrial' smart constructor.
data UpdateTrial = UpdateTrial'
  { _utDisplayName ::
      !(Maybe Text),
    _utTrialName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateTrial' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'utDisplayName' - The name of the trial as displayed. The name doesn't need to be unique. If @DisplayName@ isn't specified, @TrialName@ is displayed.
--
-- * 'utTrialName' - The name of the trial to update.
updateTrial ::
  -- | 'utTrialName'
  Text ->
  UpdateTrial
updateTrial pTrialName_ =
  UpdateTrial'
    { _utDisplayName = Nothing,
      _utTrialName = pTrialName_
    }

-- | The name of the trial as displayed. The name doesn't need to be unique. If @DisplayName@ isn't specified, @TrialName@ is displayed.
utDisplayName :: Lens' UpdateTrial (Maybe Text)
utDisplayName = lens _utDisplayName (\s a -> s {_utDisplayName = a})

-- | The name of the trial to update.
utTrialName :: Lens' UpdateTrial Text
utTrialName = lens _utTrialName (\s a -> s {_utTrialName = a})

instance AWSRequest UpdateTrial where
  type Rs UpdateTrial = UpdateTrialResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          UpdateTrialResponse'
            <$> (x .?> "TrialArn") <*> (pure (fromEnum s))
      )

instance Hashable UpdateTrial

instance NFData UpdateTrial

instance ToHeaders UpdateTrial where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.UpdateTrial" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateTrial where
  toJSON UpdateTrial' {..} =
    object
      ( catMaybes
          [ ("DisplayName" .=) <$> _utDisplayName,
            Just ("TrialName" .= _utTrialName)
          ]
      )

instance ToPath UpdateTrial where
  toPath = const "/"

instance ToQuery UpdateTrial where
  toQuery = const mempty

-- | /See:/ 'updateTrialResponse' smart constructor.
data UpdateTrialResponse = UpdateTrialResponse'
  { _utrrsTrialARN ::
      !(Maybe Text),
    _utrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateTrialResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'utrrsTrialARN' - The Amazon Resource Name (ARN) of the trial.
--
-- * 'utrrsResponseStatus' - -- | The response status code.
updateTrialResponse ::
  -- | 'utrrsResponseStatus'
  Int ->
  UpdateTrialResponse
updateTrialResponse pResponseStatus_ =
  UpdateTrialResponse'
    { _utrrsTrialARN = Nothing,
      _utrrsResponseStatus = pResponseStatus_
    }

-- | The Amazon Resource Name (ARN) of the trial.
utrrsTrialARN :: Lens' UpdateTrialResponse (Maybe Text)
utrrsTrialARN = lens _utrrsTrialARN (\s a -> s {_utrrsTrialARN = a})

-- | -- | The response status code.
utrrsResponseStatus :: Lens' UpdateTrialResponse Int
utrrsResponseStatus = lens _utrrsResponseStatus (\s a -> s {_utrrsResponseStatus = a})

instance NFData UpdateTrialResponse
