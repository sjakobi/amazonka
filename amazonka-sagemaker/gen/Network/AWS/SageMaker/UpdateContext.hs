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
-- Module      : Network.AWS.SageMaker.UpdateContext
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a context.
module Network.AWS.SageMaker.UpdateContext
  ( -- * Creating a Request
    updateContext,
    UpdateContext,

    -- * Request Lenses
    ucPropertiesToRemove,
    ucProperties,
    ucDescription,
    ucContextName,

    -- * Destructuring the Response
    updateContextResponse,
    UpdateContextResponse,

    -- * Response Lenses
    ucrrsContextARN,
    ucrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'updateContext' smart constructor.
data UpdateContext = UpdateContext'
  { _ucPropertiesToRemove ::
      !(Maybe [Text]),
    _ucProperties :: !(Maybe (Map Text Text)),
    _ucDescription :: !(Maybe Text),
    _ucContextName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateContext' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ucPropertiesToRemove' - A list of properties to remove.
--
-- * 'ucProperties' - The new list of properties. Overwrites the current property list.
--
-- * 'ucDescription' - The new description for the context.
--
-- * 'ucContextName' - The name of the context to update.
updateContext ::
  -- | 'ucContextName'
  Text ->
  UpdateContext
updateContext pContextName_ =
  UpdateContext'
    { _ucPropertiesToRemove = Nothing,
      _ucProperties = Nothing,
      _ucDescription = Nothing,
      _ucContextName = pContextName_
    }

-- | A list of properties to remove.
ucPropertiesToRemove :: Lens' UpdateContext [Text]
ucPropertiesToRemove = lens _ucPropertiesToRemove (\s a -> s {_ucPropertiesToRemove = a}) . _Default . _Coerce

-- | The new list of properties. Overwrites the current property list.
ucProperties :: Lens' UpdateContext (HashMap Text Text)
ucProperties = lens _ucProperties (\s a -> s {_ucProperties = a}) . _Default . _Map

-- | The new description for the context.
ucDescription :: Lens' UpdateContext (Maybe Text)
ucDescription = lens _ucDescription (\s a -> s {_ucDescription = a})

-- | The name of the context to update.
ucContextName :: Lens' UpdateContext Text
ucContextName = lens _ucContextName (\s a -> s {_ucContextName = a})

instance AWSRequest UpdateContext where
  type Rs UpdateContext = UpdateContextResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          UpdateContextResponse'
            <$> (x .?> "ContextArn") <*> (pure (fromEnum s))
      )

instance Hashable UpdateContext

instance NFData UpdateContext

instance ToHeaders UpdateContext where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.UpdateContext" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateContext where
  toJSON UpdateContext' {..} =
    object
      ( catMaybes
          [ ("PropertiesToRemove" .=) <$> _ucPropertiesToRemove,
            ("Properties" .=) <$> _ucProperties,
            ("Description" .=) <$> _ucDescription,
            Just ("ContextName" .= _ucContextName)
          ]
      )

instance ToPath UpdateContext where
  toPath = const "/"

instance ToQuery UpdateContext where
  toQuery = const mempty

-- | /See:/ 'updateContextResponse' smart constructor.
data UpdateContextResponse = UpdateContextResponse'
  { _ucrrsContextARN ::
      !(Maybe Text),
    _ucrrsResponseStatus ::
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

-- | Creates a value of 'UpdateContextResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ucrrsContextARN' - The Amazon Resource Name (ARN) of the context.
--
-- * 'ucrrsResponseStatus' - -- | The response status code.
updateContextResponse ::
  -- | 'ucrrsResponseStatus'
  Int ->
  UpdateContextResponse
updateContextResponse pResponseStatus_ =
  UpdateContextResponse'
    { _ucrrsContextARN = Nothing,
      _ucrrsResponseStatus = pResponseStatus_
    }

-- | The Amazon Resource Name (ARN) of the context.
ucrrsContextARN :: Lens' UpdateContextResponse (Maybe Text)
ucrrsContextARN = lens _ucrrsContextARN (\s a -> s {_ucrrsContextARN = a})

-- | -- | The response status code.
ucrrsResponseStatus :: Lens' UpdateContextResponse Int
ucrrsResponseStatus = lens _ucrrsResponseStatus (\s a -> s {_ucrrsResponseStatus = a})

instance NFData UpdateContextResponse
