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
-- Module      : Network.AWS.MediaLive.UpdateMultiplexProgram
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update a program in a multiplex.
module Network.AWS.MediaLive.UpdateMultiplexProgram
  ( -- * Creating a Request
    updateMultiplexProgram',
    UpdateMultiplexProgram',

    -- * Request Lenses
    updMultiplexProgramSettings,
    updMultiplexId,
    updProgramName,

    -- * Destructuring the Response
    updateMultiplexProgramResponse,
    UpdateMultiplexProgramResponse,

    -- * Response Lenses
    umprrsMultiplexProgram,
    umprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | A request to update a program in a multiplex.
--
-- /See:/ 'updateMultiplexProgram'' smart constructor.
data UpdateMultiplexProgram' = UpdateMultiplexProgram''
  { _updMultiplexProgramSettings ::
      !( Maybe
           MultiplexProgramSettings
       ),
    _updMultiplexId ::
      !Text,
    _updProgramName ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateMultiplexProgram'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'updMultiplexProgramSettings' - The new settings for a multiplex program.
--
-- * 'updMultiplexId' - The ID of the multiplex of the program to update.
--
-- * 'updProgramName' - The name of the program to update.
updateMultiplexProgram' ::
  -- | 'updMultiplexId'
  Text ->
  -- | 'updProgramName'
  Text ->
  UpdateMultiplexProgram'
updateMultiplexProgram' pMultiplexId_ pProgramName_ =
  UpdateMultiplexProgram''
    { _updMultiplexProgramSettings =
        Nothing,
      _updMultiplexId = pMultiplexId_,
      _updProgramName = pProgramName_
    }

-- | The new settings for a multiplex program.
updMultiplexProgramSettings :: Lens' UpdateMultiplexProgram' (Maybe MultiplexProgramSettings)
updMultiplexProgramSettings = lens _updMultiplexProgramSettings (\s a -> s {_updMultiplexProgramSettings = a})

-- | The ID of the multiplex of the program to update.
updMultiplexId :: Lens' UpdateMultiplexProgram' Text
updMultiplexId = lens _updMultiplexId (\s a -> s {_updMultiplexId = a})

-- | The name of the program to update.
updProgramName :: Lens' UpdateMultiplexProgram' Text
updProgramName = lens _updProgramName (\s a -> s {_updProgramName = a})

instance AWSRequest UpdateMultiplexProgram' where
  type
    Rs UpdateMultiplexProgram' =
      UpdateMultiplexProgramResponse
  request = putJSON mediaLive
  response =
    receiveJSON
      ( \s h x ->
          UpdateMultiplexProgramResponse'
            <$> (x .?> "multiplexProgram") <*> (pure (fromEnum s))
      )

instance Hashable UpdateMultiplexProgram'

instance NFData UpdateMultiplexProgram'

instance ToHeaders UpdateMultiplexProgram' where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateMultiplexProgram' where
  toJSON UpdateMultiplexProgram'' {..} =
    object
      ( catMaybes
          [ ("multiplexProgramSettings" .=)
              <$> _updMultiplexProgramSettings
          ]
      )

instance ToPath UpdateMultiplexProgram' where
  toPath UpdateMultiplexProgram'' {..} =
    mconcat
      [ "/prod/multiplexes/",
        toBS _updMultiplexId,
        "/programs/",
        toBS _updProgramName
      ]

instance ToQuery UpdateMultiplexProgram' where
  toQuery = const mempty

-- | Placeholder documentation for UpdateMultiplexProgramResponse
--
-- /See:/ 'updateMultiplexProgramResponse' smart constructor.
data UpdateMultiplexProgramResponse = UpdateMultiplexProgramResponse'
  { _umprrsMultiplexProgram ::
      !( Maybe
           MultiplexProgram
       ),
    _umprrsResponseStatus ::
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

-- | Creates a value of 'UpdateMultiplexProgramResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umprrsMultiplexProgram' - The updated multiplex program.
--
-- * 'umprrsResponseStatus' - -- | The response status code.
updateMultiplexProgramResponse ::
  -- | 'umprrsResponseStatus'
  Int ->
  UpdateMultiplexProgramResponse
updateMultiplexProgramResponse pResponseStatus_ =
  UpdateMultiplexProgramResponse'
    { _umprrsMultiplexProgram =
        Nothing,
      _umprrsResponseStatus = pResponseStatus_
    }

-- | The updated multiplex program.
umprrsMultiplexProgram :: Lens' UpdateMultiplexProgramResponse (Maybe MultiplexProgram)
umprrsMultiplexProgram = lens _umprrsMultiplexProgram (\s a -> s {_umprrsMultiplexProgram = a})

-- | -- | The response status code.
umprrsResponseStatus :: Lens' UpdateMultiplexProgramResponse Int
umprrsResponseStatus = lens _umprrsResponseStatus (\s a -> s {_umprrsResponseStatus = a})

instance NFData UpdateMultiplexProgramResponse
