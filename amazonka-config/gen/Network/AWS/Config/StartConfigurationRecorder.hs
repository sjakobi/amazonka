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
-- Module      : Network.AWS.Config.StartConfigurationRecorder
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts recording configurations of the AWS resources you have selected to record in your AWS account.
--
--
-- You must have created at least one delivery channel to successfully start the configuration recorder.
module Network.AWS.Config.StartConfigurationRecorder
  ( -- * Creating a Request
    startConfigurationRecorder,
    StartConfigurationRecorder,

    -- * Request Lenses
    scrConfigurationRecorderName,

    -- * Destructuring the Response
    startConfigurationRecorderResponse,
    StartConfigurationRecorderResponse,
  )
where

import Network.AWS.Config.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | The input for the 'StartConfigurationRecorder' action.
--
--
--
-- /See:/ 'startConfigurationRecorder' smart constructor.
newtype StartConfigurationRecorder = StartConfigurationRecorder'
  { _scrConfigurationRecorderName ::
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

-- | Creates a value of 'StartConfigurationRecorder' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scrConfigurationRecorderName' - The name of the recorder object that records each configuration change made to the resources.
startConfigurationRecorder ::
  -- | 'scrConfigurationRecorderName'
  Text ->
  StartConfigurationRecorder
startConfigurationRecorder
  pConfigurationRecorderName_ =
    StartConfigurationRecorder'
      { _scrConfigurationRecorderName =
          pConfigurationRecorderName_
      }

-- | The name of the recorder object that records each configuration change made to the resources.
scrConfigurationRecorderName :: Lens' StartConfigurationRecorder Text
scrConfigurationRecorderName = lens _scrConfigurationRecorderName (\s a -> s {_scrConfigurationRecorderName = a})

instance AWSRequest StartConfigurationRecorder where
  type
    Rs StartConfigurationRecorder =
      StartConfigurationRecorderResponse
  request = postJSON config
  response =
    receiveNull StartConfigurationRecorderResponse'

instance Hashable StartConfigurationRecorder

instance NFData StartConfigurationRecorder

instance ToHeaders StartConfigurationRecorder where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "StarlingDoveService.StartConfigurationRecorder" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON StartConfigurationRecorder where
  toJSON StartConfigurationRecorder' {..} =
    object
      ( catMaybes
          [ Just
              ( "ConfigurationRecorderName"
                  .= _scrConfigurationRecorderName
              )
          ]
      )

instance ToPath StartConfigurationRecorder where
  toPath = const "/"

instance ToQuery StartConfigurationRecorder where
  toQuery = const mempty

-- | /See:/ 'startConfigurationRecorderResponse' smart constructor.
data StartConfigurationRecorderResponse = StartConfigurationRecorderResponse'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'StartConfigurationRecorderResponse' with the minimum fields required to make a request.
startConfigurationRecorderResponse ::
  StartConfigurationRecorderResponse
startConfigurationRecorderResponse =
  StartConfigurationRecorderResponse'

instance NFData StartConfigurationRecorderResponse
