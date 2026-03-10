## Store (Rails Guides Tutorial)

This is the practical project developed following the [official Ruby on Rails tutorial](https://rubyonrails.org/docs/tutorials). The application is a basic e-commerce platform focused on product management, inventory notifications, and native authentication.

## Features Implemented

### 1. Product Management

* **Full CRUD:** Create, read, update, and delete products.
* **Active Storage:** Image uploads and displays for products.
* **Action Text:** Rich text descriptions using the Trix editor.
* **Validations:** Presence rules for names and positive values for inventory.

### 2. Native Authentication

* Authentication system built using the Rails 8 generator.
* **CurrentAttributes:** Use of `Current.user` to manage global sessions.
* **Password Recovery:** Password reset and email confirmation flows.
* **Permissions:** Restricted access to edit and create pages.

### 3. Notification System

* **Back in Stock:** Automatic email notifications for subscribers when a product returns to stock.
* **Active Job:** Background email delivery using `deliver_later`.
* **Concerns:** Notification logic organized in `app/models/concerns`.

### 4. Wishlists

* `has_many` and `belongs_to` associations between Users, Wishlists, and Products.
* **Counter Cache:** Optimized counting of products within a list.
* **Composite Indexes:** Database-level uniqueness constraints to prevent duplicate products in the same wishlist.

## Technologies Used

* **Framework:** Ruby on Rails 8
* **Database:** SQLite3
* **Frontend:** Hotwire (Turbo & Stimulus)
* **Testing:** Minitest (System Tests, Model Tests, and Mailer Tests)

