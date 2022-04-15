import React from 'react'

class CreditCardPayType extends React.Component {
  render() {
    return (
      <div>
        <form method="post"  id="paymentForm">
          <div className="field">
            <label htmlFor="order_credit_card_number">
              CC #
            </label>
            <input type="password"
                  name="order[credit_card_number]"
                  id="order_credit_card_number" />
          </div>
          <div className="field">
            <label htmlFor="order_expiration_date">
              Expiry
            </label>
            <input type="text"
                  name="order[expiration_date]"
                  id="order_expiration_date"
                  size="9"
                  placeholder="e.g. 03/23" />
          </div>
          <div className="field">
            <label htmlFor="cvv">
              CVV
            </label>
            <input type="text"
                  name="order[cvv]"
                  id="cvv"
                  size="3"
                  placeholder="e.g. 123" />
          </div>
        </form>
      </div>
    );
  }
}
export default CreditCardPayType