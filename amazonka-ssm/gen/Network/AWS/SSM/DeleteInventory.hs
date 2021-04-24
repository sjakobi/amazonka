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
-- Module      : Network.AWS.SSM.DeleteInventory
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete a custom inventory type or the data associated with a custom Inventory type. Deleting a custom inventory type is also referred to as deleting a custom inventory schema.
module Network.AWS.SSM.DeleteInventory
  ( -- * Creating a Request
    deleteInventory,
    DeleteInventory,

    -- * Request Lenses
    diDryRun,
    diSchemaDeleteOption,
    diClientToken,
    diTypeName,

    -- * Destructuring the Response
    deleteInventoryResponse,
    DeleteInventoryResponse,

    -- * Response Lenses
    dirrsTypeName,
    dirrsDeletionId,
    dirrsDeletionSummary,
    dirrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'deleteInventory' smart constructor.
data DeleteInventory = DeleteInventory'
  { _diDryRun ::
      !(Maybe Bool),
    _diSchemaDeleteOption ::
      !(Maybe InventorySchemaDeleteOption),
    _diClientToken :: !(Maybe Text),
    _diTypeName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteInventory' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'diDryRun' - Use this option to view a summary of the deletion request without deleting any data or the data type. This option is useful when you only want to understand what will be deleted. Once you validate that the data to be deleted is what you intend to delete, you can run the same command without specifying the @DryRun@ option.
--
-- * 'diSchemaDeleteOption' - Use the @SchemaDeleteOption@ to delete a custom inventory type (schema). If you don't choose this option, the system only deletes existing inventory data associated with the custom inventory type. Choose one of the following options: DisableSchema: If you choose this option, the system ignores all inventory data for the specified version, and any earlier versions. To enable this schema again, you must call the @PutInventory@ action for a version greater than the disabled version. DeleteSchema: This option deletes the specified custom type from the Inventory service. You can recreate the schema later, if you want.
--
-- * 'diClientToken' - User-provided idempotency token.
--
-- * 'diTypeName' - The name of the custom inventory type for which you want to delete either all previously collected data or the inventory type itself.
deleteInventory ::
  -- | 'diTypeName'
  Text ->
  DeleteInventory
deleteInventory pTypeName_ =
  DeleteInventory'
    { _diDryRun = Nothing,
      _diSchemaDeleteOption = Nothing,
      _diClientToken = Nothing,
      _diTypeName = pTypeName_
    }

-- | Use this option to view a summary of the deletion request without deleting any data or the data type. This option is useful when you only want to understand what will be deleted. Once you validate that the data to be deleted is what you intend to delete, you can run the same command without specifying the @DryRun@ option.
diDryRun :: Lens' DeleteInventory (Maybe Bool)
diDryRun = lens _diDryRun (\s a -> s {_diDryRun = a})

-- | Use the @SchemaDeleteOption@ to delete a custom inventory type (schema). If you don't choose this option, the system only deletes existing inventory data associated with the custom inventory type. Choose one of the following options: DisableSchema: If you choose this option, the system ignores all inventory data for the specified version, and any earlier versions. To enable this schema again, you must call the @PutInventory@ action for a version greater than the disabled version. DeleteSchema: This option deletes the specified custom type from the Inventory service. You can recreate the schema later, if you want.
diSchemaDeleteOption :: Lens' DeleteInventory (Maybe InventorySchemaDeleteOption)
diSchemaDeleteOption = lens _diSchemaDeleteOption (\s a -> s {_diSchemaDeleteOption = a})

-- | User-provided idempotency token.
diClientToken :: Lens' DeleteInventory (Maybe Text)
diClientToken = lens _diClientToken (\s a -> s {_diClientToken = a})

-- | The name of the custom inventory type for which you want to delete either all previously collected data or the inventory type itself.
diTypeName :: Lens' DeleteInventory Text
diTypeName = lens _diTypeName (\s a -> s {_diTypeName = a})

instance AWSRequest DeleteInventory where
  type Rs DeleteInventory = DeleteInventoryResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          DeleteInventoryResponse'
            <$> (x .?> "TypeName")
            <*> (x .?> "DeletionId")
            <*> (x .?> "DeletionSummary")
            <*> (pure (fromEnum s))
      )

instance Hashable DeleteInventory

instance NFData DeleteInventory

instance ToHeaders DeleteInventory where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonSSM.DeleteInventory" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteInventory where
  toJSON DeleteInventory' {..} =
    object
      ( catMaybes
          [ ("DryRun" .=) <$> _diDryRun,
            ("SchemaDeleteOption" .=) <$> _diSchemaDeleteOption,
            ("ClientToken" .=) <$> _diClientToken,
            Just ("TypeName" .= _diTypeName)
          ]
      )

instance ToPath DeleteInventory where
  toPath = const "/"

instance ToQuery DeleteInventory where
  toQuery = const mempty

-- | /See:/ 'deleteInventoryResponse' smart constructor.
data DeleteInventoryResponse = DeleteInventoryResponse'
  { _dirrsTypeName ::
      !(Maybe Text),
    _dirrsDeletionId ::
      !(Maybe Text),
    _dirrsDeletionSummary ::
      !( Maybe
           InventoryDeletionSummary
       ),
    _dirrsResponseStatus ::
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

-- | Creates a value of 'DeleteInventoryResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dirrsTypeName' - The name of the inventory data type specified in the request.
--
-- * 'dirrsDeletionId' - Every @DeleteInventory@ action is assigned a unique ID. This option returns a unique ID. You can use this ID to query the status of a delete operation. This option is useful for ensuring that a delete operation has completed before you begin other actions.
--
-- * 'dirrsDeletionSummary' - A summary of the delete operation. For more information about this summary, see <https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-inventory-custom.html#sysman-inventory-delete-summary Deleting custom inventory> in the /AWS Systems Manager User Guide/ .
--
-- * 'dirrsResponseStatus' - -- | The response status code.
deleteInventoryResponse ::
  -- | 'dirrsResponseStatus'
  Int ->
  DeleteInventoryResponse
deleteInventoryResponse pResponseStatus_ =
  DeleteInventoryResponse'
    { _dirrsTypeName = Nothing,
      _dirrsDeletionId = Nothing,
      _dirrsDeletionSummary = Nothing,
      _dirrsResponseStatus = pResponseStatus_
    }

-- | The name of the inventory data type specified in the request.
dirrsTypeName :: Lens' DeleteInventoryResponse (Maybe Text)
dirrsTypeName = lens _dirrsTypeName (\s a -> s {_dirrsTypeName = a})

-- | Every @DeleteInventory@ action is assigned a unique ID. This option returns a unique ID. You can use this ID to query the status of a delete operation. This option is useful for ensuring that a delete operation has completed before you begin other actions.
dirrsDeletionId :: Lens' DeleteInventoryResponse (Maybe Text)
dirrsDeletionId = lens _dirrsDeletionId (\s a -> s {_dirrsDeletionId = a})

-- | A summary of the delete operation. For more information about this summary, see <https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-inventory-custom.html#sysman-inventory-delete-summary Deleting custom inventory> in the /AWS Systems Manager User Guide/ .
dirrsDeletionSummary :: Lens' DeleteInventoryResponse (Maybe InventoryDeletionSummary)
dirrsDeletionSummary = lens _dirrsDeletionSummary (\s a -> s {_dirrsDeletionSummary = a})

-- | -- | The response status code.
dirrsResponseStatus :: Lens' DeleteInventoryResponse Int
dirrsResponseStatus = lens _dirrsResponseStatus (\s a -> s {_dirrsResponseStatus = a})

instance NFData DeleteInventoryResponse
