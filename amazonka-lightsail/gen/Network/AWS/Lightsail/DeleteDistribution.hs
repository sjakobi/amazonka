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
-- Module      : Network.AWS.Lightsail.DeleteDistribution
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes your Amazon Lightsail content delivery network (CDN) distribution.
module Network.AWS.Lightsail.DeleteDistribution
  ( -- * Creating a Request
    deleteDistribution,
    DeleteDistribution,

    -- * Request Lenses
    ddDistributionName,

    -- * Destructuring the Response
    deleteDistributionResponse,
    DeleteDistributionResponse,

    -- * Response Lenses
    delrsOperation,
    delrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Lightsail.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteDistribution' smart constructor.
newtype DeleteDistribution = DeleteDistribution'
  { _ddDistributionName ::
      Maybe Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteDistribution' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddDistributionName' - The name of the distribution to delete. Use the @GetDistributions@ action to get a list of distribution names that you can specify.
deleteDistribution ::
  DeleteDistribution
deleteDistribution =
  DeleteDistribution' {_ddDistributionName = Nothing}

-- | The name of the distribution to delete. Use the @GetDistributions@ action to get a list of distribution names that you can specify.
ddDistributionName :: Lens' DeleteDistribution (Maybe Text)
ddDistributionName = lens _ddDistributionName (\s a -> s {_ddDistributionName = a})

instance AWSRequest DeleteDistribution where
  type
    Rs DeleteDistribution =
      DeleteDistributionResponse
  request = postJSON lightsail
  response =
    receiveJSON
      ( \s h x ->
          DeleteDistributionResponse'
            <$> (x .?> "operation") <*> (pure (fromEnum s))
      )

instance Hashable DeleteDistribution

instance NFData DeleteDistribution

instance ToHeaders DeleteDistribution where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Lightsail_20161128.DeleteDistribution" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteDistribution where
  toJSON DeleteDistribution' {..} =
    object
      ( catMaybes
          [("distributionName" .=) <$> _ddDistributionName]
      )

instance ToPath DeleteDistribution where
  toPath = const "/"

instance ToQuery DeleteDistribution where
  toQuery = const mempty

-- | /See:/ 'deleteDistributionResponse' smart constructor.
data DeleteDistributionResponse = DeleteDistributionResponse'
  { _delrsOperation ::
      !( Maybe
           Operation
       ),
    _delrsResponseStatus ::
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

-- | Creates a value of 'DeleteDistributionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'delrsOperation' - An object that describes the result of the action, such as the status of the request, the timestamp of the request, and the resources affected by the request.
--
-- * 'delrsResponseStatus' - -- | The response status code.
deleteDistributionResponse ::
  -- | 'delrsResponseStatus'
  Int ->
  DeleteDistributionResponse
deleteDistributionResponse pResponseStatus_ =
  DeleteDistributionResponse'
    { _delrsOperation =
        Nothing,
      _delrsResponseStatus = pResponseStatus_
    }

-- | An object that describes the result of the action, such as the status of the request, the timestamp of the request, and the resources affected by the request.
delrsOperation :: Lens' DeleteDistributionResponse (Maybe Operation)
delrsOperation = lens _delrsOperation (\s a -> s {_delrsOperation = a})

-- | -- | The response status code.
delrsResponseStatus :: Lens' DeleteDistributionResponse Int
delrsResponseStatus = lens _delrsResponseStatus (\s a -> s {_delrsResponseStatus = a})

instance NFData DeleteDistributionResponse
